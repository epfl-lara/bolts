; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93680 () Bool)

(assert start!93680)

(declare-fun b!1059415 () Bool)

(declare-fun e!603014 () Bool)

(declare-fun e!603015 () Bool)

(declare-fun mapRes!39088 () Bool)

(assert (=> b!1059415 (= e!603014 (and e!603015 mapRes!39088))))

(declare-fun condMapEmpty!39088 () Bool)

(declare-datatypes ((V!38401 0))(
  ( (V!38402 (val!12525 Int)) )
))
(declare-datatypes ((ValueCell!11771 0))(
  ( (ValueCellFull!11771 (v!15136 V!38401)) (EmptyCell!11771) )
))
(declare-datatypes ((array!66908 0))(
  ( (array!66909 (arr!32160 (Array (_ BitVec 32) ValueCell!11771)) (size!32697 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66908)

(declare-fun mapDefault!39088 () ValueCell!11771)

