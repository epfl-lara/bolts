; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108204 () Bool)

(assert start!108204)

(declare-fun b_free!27863 () Bool)

(declare-fun b_next!27863 () Bool)

(assert (=> start!108204 (= b_free!27863 (not b_next!27863))))

(declare-fun tp!98546 () Bool)

(declare-fun b_and!45931 () Bool)

(assert (=> start!108204 (= tp!98546 b_and!45931)))

(declare-fun b!1277263 () Bool)

(declare-fun res!848808 () Bool)

(declare-fun e!729464 () Bool)

(assert (=> b!1277263 (=> (not res!848808) (not e!729464))))

(declare-datatypes ((array!83867 0))(
  ( (array!83868 (arr!40439 (Array (_ BitVec 32) (_ BitVec 64))) (size!40990 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83867)

(declare-datatypes ((List!28858 0))(
  ( (Nil!28855) (Cons!28854 (h!30063 (_ BitVec 64)) (t!42403 List!28858)) )
))
(declare-fun arrayNoDuplicates!0 (array!83867 (_ BitVec 32) List!28858) Bool)

(assert (=> b!1277263 (= res!848808 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28855))))

(declare-fun b!1277264 () Bool)

(assert (=> b!1277264 (= e!729464 false)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575622 () Bool)

(declare-datatypes ((V!49653 0))(
  ( (V!49654 (val!16781 Int)) )
))
(declare-fun minValue!1129 () V!49653)

(declare-fun k!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15808 0))(
  ( (ValueCellFull!15808 (v!19377 V!49653)) (EmptyCell!15808) )
))
(declare-datatypes ((array!83869 0))(
  ( (array!83870 (arr!40440 (Array (_ BitVec 32) ValueCell!15808)) (size!40991 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83869)

(declare-fun zeroValue!1129 () V!49653)

(declare-datatypes ((tuple2!21674 0))(
  ( (tuple2!21675 (_1!10847 (_ BitVec 64)) (_2!10847 V!49653)) )
))
(declare-datatypes ((List!28859 0))(
  ( (Nil!28856) (Cons!28855 (h!30064 tuple2!21674) (t!42404 List!28859)) )
))
(declare-datatypes ((ListLongMap!19343 0))(
  ( (ListLongMap!19344 (toList!9687 List!28859)) )
))
(declare-fun contains!7735 (ListLongMap!19343 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4707 (array!83867 array!83869 (_ BitVec 32) (_ BitVec 32) V!49653 V!49653 (_ BitVec 32) Int) ListLongMap!19343)

(assert (=> b!1277264 (= lt!575622 (contains!7735 (getCurrentListMap!4707 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1277265 () Bool)

(declare-fun res!848806 () Bool)

(assert (=> b!1277265 (=> (not res!848806) (not e!729464))))

(assert (=> b!1277265 (= res!848806 (and (= (size!40991 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40990 _keys!1427) (size!40991 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun res!848807 () Bool)

(assert (=> start!108204 (=> (not res!848807) (not e!729464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108204 (= res!848807 (validMask!0 mask!1805))))

(assert (=> start!108204 e!729464))

(assert (=> start!108204 true))

(assert (=> start!108204 tp!98546))

(declare-fun tp_is_empty!33413 () Bool)

(assert (=> start!108204 tp_is_empty!33413))

(declare-fun e!729460 () Bool)

(declare-fun array_inv!30691 (array!83869) Bool)

(assert (=> start!108204 (and (array_inv!30691 _values!1187) e!729460)))

(declare-fun array_inv!30692 (array!83867) Bool)

(assert (=> start!108204 (array_inv!30692 _keys!1427)))

(declare-fun mapNonEmpty!51653 () Bool)

(declare-fun mapRes!51653 () Bool)

(declare-fun tp!98547 () Bool)

(declare-fun e!729462 () Bool)

(assert (=> mapNonEmpty!51653 (= mapRes!51653 (and tp!98547 e!729462))))

(declare-fun mapRest!51653 () (Array (_ BitVec 32) ValueCell!15808))

(declare-fun mapKey!51653 () (_ BitVec 32))

(declare-fun mapValue!51653 () ValueCell!15808)

(assert (=> mapNonEmpty!51653 (= (arr!40440 _values!1187) (store mapRest!51653 mapKey!51653 mapValue!51653))))

(declare-fun mapIsEmpty!51653 () Bool)

(assert (=> mapIsEmpty!51653 mapRes!51653))

(declare-fun b!1277266 () Bool)

(assert (=> b!1277266 (= e!729462 tp_is_empty!33413)))

(declare-fun b!1277267 () Bool)

(declare-fun res!848805 () Bool)

(assert (=> b!1277267 (=> (not res!848805) (not e!729464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83867 (_ BitVec 32)) Bool)

(assert (=> b!1277267 (= res!848805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277268 () Bool)

(declare-fun e!729463 () Bool)

(assert (=> b!1277268 (= e!729463 tp_is_empty!33413)))

(declare-fun b!1277269 () Bool)

(assert (=> b!1277269 (= e!729460 (and e!729463 mapRes!51653))))

(declare-fun condMapEmpty!51653 () Bool)

(declare-fun mapDefault!51653 () ValueCell!15808)

