; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84218 () Bool)

(assert start!84218)

(declare-fun b_free!19891 () Bool)

(declare-fun b_next!19891 () Bool)

(assert (=> start!84218 (= b_free!19891 (not b_next!19891))))

(declare-fun tp!69277 () Bool)

(declare-fun b_and!31877 () Bool)

(assert (=> start!84218 (= tp!69277 b_and!31877)))

(declare-fun b!984482 () Bool)

(declare-fun e!555009 () Bool)

(declare-fun tp_is_empty!22993 () Bool)

(assert (=> b!984482 (= e!555009 tp_is_empty!22993)))

(declare-fun mapIsEmpty!36518 () Bool)

(declare-fun mapRes!36518 () Bool)

(assert (=> mapIsEmpty!36518 mapRes!36518))

(declare-fun b!984483 () Bool)

(declare-fun res!658883 () Bool)

(declare-fun e!555011 () Bool)

(assert (=> b!984483 (=> (not res!658883) (not e!555011))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61953 0))(
  ( (array!61954 (arr!29830 (Array (_ BitVec 32) (_ BitVec 64))) (size!30310 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61953)

(assert (=> b!984483 (= res!658883 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30310 _keys!1544))))))

(declare-fun b!984484 () Bool)

(declare-fun res!658878 () Bool)

(assert (=> b!984484 (=> (not res!658878) (not e!555011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984484 (= res!658878 (validKeyInArray!0 (select (arr!29830 _keys!1544) from!1932)))))

(declare-fun b!984485 () Bool)

(declare-fun e!555013 () Bool)

(assert (=> b!984485 (= e!555013 (and e!555009 mapRes!36518))))

(declare-fun condMapEmpty!36518 () Bool)

(declare-datatypes ((V!35641 0))(
  ( (V!35642 (val!11547 Int)) )
))
(declare-datatypes ((ValueCell!11015 0))(
  ( (ValueCellFull!11015 (v!14109 V!35641)) (EmptyCell!11015) )
))
(declare-datatypes ((array!61955 0))(
  ( (array!61956 (arr!29831 (Array (_ BitVec 32) ValueCell!11015)) (size!30311 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61955)

(declare-fun mapDefault!36518 () ValueCell!11015)

