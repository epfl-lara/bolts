; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107006 () Bool)

(assert start!107006)

(declare-fun b!1268331 () Bool)

(declare-fun e!722752 () Bool)

(declare-fun tp_is_empty!32659 () Bool)

(assert (=> b!1268331 (= e!722752 tp_is_empty!32659)))

(declare-fun mapNonEmpty!50569 () Bool)

(declare-fun mapRes!50569 () Bool)

(declare-fun tp!96749 () Bool)

(declare-fun e!722750 () Bool)

(assert (=> mapNonEmpty!50569 (= mapRes!50569 (and tp!96749 e!722750))))

(declare-datatypes ((V!48739 0))(
  ( (V!48740 (val!16404 Int)) )
))
(declare-datatypes ((ValueCell!15476 0))(
  ( (ValueCellFull!15476 (v!19039 V!48739)) (EmptyCell!15476) )
))
(declare-datatypes ((array!82569 0))(
  ( (array!82570 (arr!39817 (Array (_ BitVec 32) ValueCell!15476)) (size!40354 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82569)

(declare-fun mapValue!50569 () ValueCell!15476)

(declare-fun mapKey!50569 () (_ BitVec 32))

(declare-fun mapRest!50569 () (Array (_ BitVec 32) ValueCell!15476))

(assert (=> mapNonEmpty!50569 (= (arr!39817 _values!1134) (store mapRest!50569 mapKey!50569 mapValue!50569))))

(declare-fun mapIsEmpty!50569 () Bool)

(assert (=> mapIsEmpty!50569 mapRes!50569))

(declare-fun res!844268 () Bool)

(declare-fun e!722753 () Bool)

(assert (=> start!107006 (=> (not res!844268) (not e!722753))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107006 (= res!844268 (validMask!0 mask!1730))))

(assert (=> start!107006 e!722753))

(declare-fun e!722751 () Bool)

(declare-fun array_inv!30257 (array!82569) Bool)

(assert (=> start!107006 (and (array_inv!30257 _values!1134) e!722751)))

(assert (=> start!107006 true))

(declare-datatypes ((array!82571 0))(
  ( (array!82572 (arr!39818 (Array (_ BitVec 32) (_ BitVec 64))) (size!40355 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82571)

(declare-fun array_inv!30258 (array!82571) Bool)

(assert (=> start!107006 (array_inv!30258 _keys!1364)))

(declare-fun b!1268332 () Bool)

(assert (=> b!1268332 (= e!722750 tp_is_empty!32659)))

(declare-fun b!1268333 () Bool)

(assert (=> b!1268333 (= e!722751 (and e!722752 mapRes!50569))))

(declare-fun condMapEmpty!50569 () Bool)

(declare-fun mapDefault!50569 () ValueCell!15476)

