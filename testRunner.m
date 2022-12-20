addpath("Tree_Class")
suite = testsuite("testFolder")

import matlab.unittest.plugins.CodeCoveragePlugin
import matlab.unittest.plugins.codecoverage.CoverageReport
runner = testrunner("textoutput");
sourceCodeFolder = "Tree_Class";
reportFolder = "coverageReport";
reportFormat = CoverageReport(reportFolder);
p = CodeCoveragePlugin.forFolder(sourceCodeFolder,"Producing",reportFormat);
runner.addPlugin(p)

results = runner.run(suite)