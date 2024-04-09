; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35922 () Bool)

(assert start!35922)

(declare-fun b!360870 () Bool)

(declare-fun e!220943 () Bool)

(declare-fun e!220944 () Bool)

(declare-fun mapRes!14037 () Bool)

(assert (=> b!360870 (= e!220943 (and e!220944 mapRes!14037))))

(declare-fun condMapEmpty!14037 () Bool)

(declare-datatypes ((V!12111 0))(
  ( (V!12112 (val!4220 Int)) )
))
(declare-datatypes ((ValueCell!3832 0))(
  ( (ValueCellFull!3832 (v!6410 V!12111)) (EmptyCell!3832) )
))
(declare-datatypes ((array!20221 0))(
  ( (array!20222 (arr!9600 (Array (_ BitVec 32) ValueCell!3832)) (size!9952 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20221)

(declare-fun mapDefault!14037 () ValueCell!3832)

