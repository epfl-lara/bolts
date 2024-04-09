; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108224 () Bool)

(assert start!108224)

(declare-fun b_free!27883 () Bool)

(declare-fun b_next!27883 () Bool)

(assert (=> start!108224 (= b_free!27883 (not b_next!27883))))

(declare-fun tp!98606 () Bool)

(declare-fun b_and!45951 () Bool)

(assert (=> start!108224 (= tp!98606 b_and!45951)))

(declare-fun res!848928 () Bool)

(declare-fun e!729611 () Bool)

(assert (=> start!108224 (=> (not res!848928) (not e!729611))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108224 (= res!848928 (validMask!0 mask!1805))))

(assert (=> start!108224 e!729611))

(assert (=> start!108224 true))

(assert (=> start!108224 tp!98606))

(declare-fun tp_is_empty!33433 () Bool)

(assert (=> start!108224 tp_is_empty!33433))

(declare-datatypes ((V!49681 0))(
  ( (V!49682 (val!16791 Int)) )
))
(declare-datatypes ((ValueCell!15818 0))(
  ( (ValueCellFull!15818 (v!19387 V!49681)) (EmptyCell!15818) )
))
(declare-datatypes ((array!83905 0))(
  ( (array!83906 (arr!40458 (Array (_ BitVec 32) ValueCell!15818)) (size!41009 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83905)

(declare-fun e!729613 () Bool)

(declare-fun array_inv!30707 (array!83905) Bool)

(assert (=> start!108224 (and (array_inv!30707 _values!1187) e!729613)))

(declare-datatypes ((array!83907 0))(
  ( (array!83908 (arr!40459 (Array (_ BitVec 32) (_ BitVec 64))) (size!41010 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83907)

(declare-fun array_inv!30708 (array!83907) Bool)

(assert (=> start!108224 (array_inv!30708 _keys!1427)))

(declare-fun mapIsEmpty!51683 () Bool)

(declare-fun mapRes!51683 () Bool)

(assert (=> mapIsEmpty!51683 mapRes!51683))

(declare-fun b!1277473 () Bool)

(declare-fun e!729612 () Bool)

(assert (=> b!1277473 (= e!729612 tp_is_empty!33433)))

(declare-fun b!1277474 () Bool)

(assert (=> b!1277474 (= e!729611 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun lt!575652 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49681)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49681)

(declare-datatypes ((tuple2!21688 0))(
  ( (tuple2!21689 (_1!10854 (_ BitVec 64)) (_2!10854 V!49681)) )
))
(declare-datatypes ((List!28874 0))(
  ( (Nil!28871) (Cons!28870 (h!30079 tuple2!21688) (t!42419 List!28874)) )
))
(declare-datatypes ((ListLongMap!19357 0))(
  ( (ListLongMap!19358 (toList!9694 List!28874)) )
))
(declare-fun contains!7742 (ListLongMap!19357 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4714 (array!83907 array!83905 (_ BitVec 32) (_ BitVec 32) V!49681 V!49681 (_ BitVec 32) Int) ListLongMap!19357)

(assert (=> b!1277474 (= lt!575652 (contains!7742 (getCurrentListMap!4714 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1277475 () Bool)

(declare-fun res!848926 () Bool)

(assert (=> b!1277475 (=> (not res!848926) (not e!729611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83907 (_ BitVec 32)) Bool)

(assert (=> b!1277475 (= res!848926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277476 () Bool)

(assert (=> b!1277476 (= e!729613 (and e!729612 mapRes!51683))))

(declare-fun condMapEmpty!51683 () Bool)

(declare-fun mapDefault!51683 () ValueCell!15818)

