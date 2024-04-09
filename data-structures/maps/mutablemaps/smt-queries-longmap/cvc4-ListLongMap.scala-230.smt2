; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4064 () Bool)

(assert start!4064)

(declare-fun b_free!971 () Bool)

(declare-fun b_next!971 () Bool)

(assert (=> start!4064 (= b_free!971 (not b_next!971))))

(declare-fun tp!4332 () Bool)

(declare-fun b_and!1783 () Bool)

(assert (=> start!4064 (= tp!4332 b_and!1783)))

(declare-fun mapIsEmpty!1516 () Bool)

(declare-fun mapRes!1516 () Bool)

(assert (=> mapIsEmpty!1516 mapRes!1516))

(declare-fun b!29984 () Bool)

(declare-fun res!18007 () Bool)

(declare-fun e!19310 () Bool)

(assert (=> b!29984 (=> (not res!18007) (not e!19310))))

(declare-datatypes ((array!1871 0))(
  ( (array!1872 (arr!889 (Array (_ BitVec 32) (_ BitVec 64))) (size!990 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1871)

(declare-datatypes ((List!732 0))(
  ( (Nil!729) (Cons!728 (h!1295 (_ BitVec 64)) (t!3427 List!732)) )
))
(declare-fun arrayNoDuplicates!0 (array!1871 (_ BitVec 32) List!732) Bool)

(assert (=> b!29984 (= res!18007 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!729))))

(declare-fun mapNonEmpty!1516 () Bool)

(declare-fun tp!4333 () Bool)

(declare-fun e!19312 () Bool)

(assert (=> mapNonEmpty!1516 (= mapRes!1516 (and tp!4333 e!19312))))

(declare-datatypes ((V!1591 0))(
  ( (V!1592 (val!689 Int)) )
))
(declare-datatypes ((ValueCell!463 0))(
  ( (ValueCellFull!463 (v!1778 V!1591)) (EmptyCell!463) )
))
(declare-datatypes ((array!1873 0))(
  ( (array!1874 (arr!890 (Array (_ BitVec 32) ValueCell!463)) (size!991 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1873)

(declare-fun mapKey!1516 () (_ BitVec 32))

(declare-fun mapRest!1516 () (Array (_ BitVec 32) ValueCell!463))

(declare-fun mapValue!1516 () ValueCell!463)

(assert (=> mapNonEmpty!1516 (= (arr!890 _values!1501) (store mapRest!1516 mapKey!1516 mapValue!1516))))

(declare-fun b!29986 () Bool)

(declare-fun e!19308 () Bool)

(declare-fun e!19311 () Bool)

(assert (=> b!29986 (= e!19308 (and e!19311 mapRes!1516))))

(declare-fun condMapEmpty!1516 () Bool)

(declare-fun mapDefault!1516 () ValueCell!463)

