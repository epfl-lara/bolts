; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108138 () Bool)

(assert start!108138)

(declare-fun b_free!27815 () Bool)

(declare-fun b_next!27815 () Bool)

(assert (=> start!108138 (= b_free!27815 (not b_next!27815))))

(declare-fun tp!98399 () Bool)

(declare-fun b_and!45881 () Bool)

(assert (=> start!108138 (= tp!98399 b_and!45881)))

(declare-fun b!1276530 () Bool)

(declare-fun res!848414 () Bool)

(declare-fun e!728994 () Bool)

(assert (=> b!1276530 (=> (not res!848414) (not e!728994))))

(declare-datatypes ((array!83775 0))(
  ( (array!83776 (arr!40394 (Array (_ BitVec 32) (_ BitVec 64))) (size!40945 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83775)

(declare-datatypes ((List!28824 0))(
  ( (Nil!28821) (Cons!28820 (h!30029 (_ BitVec 64)) (t!42367 List!28824)) )
))
(declare-fun arrayNoDuplicates!0 (array!83775 (_ BitVec 32) List!28824) Bool)

(assert (=> b!1276530 (= res!848414 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28821))))

(declare-fun mapIsEmpty!51578 () Bool)

(declare-fun mapRes!51578 () Bool)

(assert (=> mapIsEmpty!51578 mapRes!51578))

(declare-fun b!1276531 () Bool)

(declare-fun e!728993 () Bool)

(declare-fun tp_is_empty!33365 () Bool)

(assert (=> b!1276531 (= e!728993 tp_is_empty!33365)))

(declare-fun b!1276532 () Bool)

(declare-fun res!848412 () Bool)

(assert (=> b!1276532 (=> (not res!848412) (not e!728994))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83775 (_ BitVec 32)) Bool)

(assert (=> b!1276532 (= res!848412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276533 () Bool)

(declare-fun e!728996 () Bool)

(assert (=> b!1276533 (= e!728996 tp_is_empty!33365)))

(declare-fun b!1276534 () Bool)

(assert (=> b!1276534 (= e!728994 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49589 0))(
  ( (V!49590 (val!16757 Int)) )
))
(declare-fun minValue!1129 () V!49589)

(declare-datatypes ((ValueCell!15784 0))(
  ( (ValueCellFull!15784 (v!19352 V!49589)) (EmptyCell!15784) )
))
(declare-datatypes ((array!83777 0))(
  ( (array!83778 (arr!40395 (Array (_ BitVec 32) ValueCell!15784)) (size!40946 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83777)

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun lt!575451 () Bool)

(declare-fun zeroValue!1129 () V!49589)

(declare-fun k!1053 () (_ BitVec 64))

(declare-datatypes ((tuple2!21638 0))(
  ( (tuple2!21639 (_1!10829 (_ BitVec 64)) (_2!10829 V!49589)) )
))
(declare-datatypes ((List!28825 0))(
  ( (Nil!28822) (Cons!28821 (h!30030 tuple2!21638) (t!42368 List!28825)) )
))
(declare-datatypes ((ListLongMap!19307 0))(
  ( (ListLongMap!19308 (toList!9669 List!28825)) )
))
(declare-fun contains!7716 (ListLongMap!19307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4689 (array!83775 array!83777 (_ BitVec 32) (_ BitVec 32) V!49589 V!49589 (_ BitVec 32) Int) ListLongMap!19307)

(assert (=> b!1276534 (= lt!575451 (contains!7716 (getCurrentListMap!4689 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun res!848415 () Bool)

(assert (=> start!108138 (=> (not res!848415) (not e!728994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108138 (= res!848415 (validMask!0 mask!1805))))

(assert (=> start!108138 e!728994))

(assert (=> start!108138 true))

(assert (=> start!108138 tp!98399))

(assert (=> start!108138 tp_is_empty!33365))

(declare-fun e!728995 () Bool)

(declare-fun array_inv!30659 (array!83777) Bool)

(assert (=> start!108138 (and (array_inv!30659 _values!1187) e!728995)))

(declare-fun array_inv!30660 (array!83775) Bool)

(assert (=> start!108138 (array_inv!30660 _keys!1427)))

(declare-fun b!1276535 () Bool)

(assert (=> b!1276535 (= e!728995 (and e!728993 mapRes!51578))))

(declare-fun condMapEmpty!51578 () Bool)

(declare-fun mapDefault!51578 () ValueCell!15784)

