; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37192 () Bool)

(assert start!37192)

(declare-fun b_free!8311 () Bool)

(declare-fun b_next!8311 () Bool)

(assert (=> start!37192 (= b_free!8311 (not b_next!8311))))

(declare-fun tp!29649 () Bool)

(declare-fun b_and!15571 () Bool)

(assert (=> start!37192 (= tp!29649 b_and!15571)))

(declare-fun b!375237 () Bool)

(declare-fun e!228626 () Bool)

(declare-fun e!228625 () Bool)

(assert (=> b!375237 (= e!228626 e!228625)))

(declare-fun res!211902 () Bool)

(assert (=> b!375237 (=> (not res!211902) (not e!228625))))

(declare-datatypes ((array!21817 0))(
  ( (array!21818 (arr!10374 (Array (_ BitVec 32) (_ BitVec 64))) (size!10726 (_ BitVec 32))) )
))
(declare-fun lt!173705 () array!21817)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21817 (_ BitVec 32)) Bool)

(assert (=> b!375237 (= res!211902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173705 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21817)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375237 (= lt!173705 (array!21818 (store (arr!10374 _keys!658) i!548 k!778) (size!10726 _keys!658)))))

(declare-fun b!375238 () Bool)

(declare-fun res!211893 () Bool)

(assert (=> b!375238 (=> (not res!211893) (not e!228626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375238 (= res!211893 (validKeyInArray!0 k!778))))

(declare-fun b!375239 () Bool)

(declare-fun e!228620 () Bool)

(declare-fun tp_is_empty!8959 () Bool)

(assert (=> b!375239 (= e!228620 tp_is_empty!8959)))

(declare-fun b!375240 () Bool)

(declare-fun res!211900 () Bool)

(assert (=> b!375240 (=> (not res!211900) (not e!228625))))

(declare-datatypes ((List!5865 0))(
  ( (Nil!5862) (Cons!5861 (h!6717 (_ BitVec 64)) (t!11023 List!5865)) )
))
(declare-fun arrayNoDuplicates!0 (array!21817 (_ BitVec 32) List!5865) Bool)

(assert (=> b!375240 (= res!211900 (arrayNoDuplicates!0 lt!173705 #b00000000000000000000000000000000 Nil!5862))))

(declare-fun b!375241 () Bool)

(declare-fun e!228624 () Bool)

(assert (=> b!375241 (= e!228625 (not e!228624))))

(declare-fun res!211894 () Bool)

(assert (=> b!375241 (=> res!211894 e!228624)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375241 (= res!211894 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13051 0))(
  ( (V!13052 (val!4524 Int)) )
))
(declare-datatypes ((ValueCell!4136 0))(
  ( (ValueCellFull!4136 (v!6717 V!13051)) (EmptyCell!4136) )
))
(declare-datatypes ((array!21819 0))(
  ( (array!21820 (arr!10375 (Array (_ BitVec 32) ValueCell!4136)) (size!10727 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21819)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5994 0))(
  ( (tuple2!5995 (_1!3007 (_ BitVec 64)) (_2!3007 V!13051)) )
))
(declare-datatypes ((List!5866 0))(
  ( (Nil!5863) (Cons!5862 (h!6718 tuple2!5994) (t!11024 List!5866)) )
))
(declare-datatypes ((ListLongMap!4921 0))(
  ( (ListLongMap!4922 (toList!2476 List!5866)) )
))
(declare-fun lt!173704 () ListLongMap!4921)

(declare-fun zeroValue!472 () V!13051)

(declare-fun minValue!472 () V!13051)

(declare-fun getCurrentListMap!1918 (array!21817 array!21819 (_ BitVec 32) (_ BitVec 32) V!13051 V!13051 (_ BitVec 32) Int) ListLongMap!4921)

(assert (=> b!375241 (= lt!173704 (getCurrentListMap!1918 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173700 () ListLongMap!4921)

(declare-fun lt!173699 () array!21819)

(assert (=> b!375241 (= lt!173700 (getCurrentListMap!1918 lt!173705 lt!173699 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173710 () ListLongMap!4921)

(declare-fun lt!173707 () ListLongMap!4921)

(assert (=> b!375241 (and (= lt!173710 lt!173707) (= lt!173707 lt!173710))))

(declare-fun lt!173708 () ListLongMap!4921)

(declare-fun lt!173706 () tuple2!5994)

(declare-fun +!817 (ListLongMap!4921 tuple2!5994) ListLongMap!4921)

(assert (=> b!375241 (= lt!173707 (+!817 lt!173708 lt!173706))))

(declare-fun v!373 () V!13051)

(assert (=> b!375241 (= lt!173706 (tuple2!5995 k!778 v!373))))

(declare-datatypes ((Unit!11537 0))(
  ( (Unit!11538) )
))
(declare-fun lt!173703 () Unit!11537)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!69 (array!21817 array!21819 (_ BitVec 32) (_ BitVec 32) V!13051 V!13051 (_ BitVec 32) (_ BitVec 64) V!13051 (_ BitVec 32) Int) Unit!11537)

(assert (=> b!375241 (= lt!173703 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!69 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!736 (array!21817 array!21819 (_ BitVec 32) (_ BitVec 32) V!13051 V!13051 (_ BitVec 32) Int) ListLongMap!4921)

(assert (=> b!375241 (= lt!173710 (getCurrentListMapNoExtraKeys!736 lt!173705 lt!173699 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375241 (= lt!173699 (array!21820 (store (arr!10375 _values!506) i!548 (ValueCellFull!4136 v!373)) (size!10727 _values!506)))))

(assert (=> b!375241 (= lt!173708 (getCurrentListMapNoExtraKeys!736 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375242 () Bool)

(declare-fun res!211896 () Bool)

(assert (=> b!375242 (=> (not res!211896) (not e!228626))))

(assert (=> b!375242 (= res!211896 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5862))))

(declare-fun b!375243 () Bool)

(declare-fun res!211903 () Bool)

(assert (=> b!375243 (=> (not res!211903) (not e!228626))))

(assert (=> b!375243 (= res!211903 (or (= (select (arr!10374 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10374 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375244 () Bool)

(declare-fun res!211895 () Bool)

(assert (=> b!375244 (=> (not res!211895) (not e!228626))))

(assert (=> b!375244 (= res!211895 (and (= (size!10727 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10726 _keys!658) (size!10727 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!211897 () Bool)

(assert (=> start!37192 (=> (not res!211897) (not e!228626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37192 (= res!211897 (validMask!0 mask!970))))

(assert (=> start!37192 e!228626))

(declare-fun e!228622 () Bool)

(declare-fun array_inv!7644 (array!21819) Bool)

(assert (=> start!37192 (and (array_inv!7644 _values!506) e!228622)))

(assert (=> start!37192 tp!29649))

(assert (=> start!37192 true))

(assert (=> start!37192 tp_is_empty!8959))

(declare-fun array_inv!7645 (array!21817) Bool)

(assert (=> start!37192 (array_inv!7645 _keys!658)))

(declare-fun mapNonEmpty!15003 () Bool)

(declare-fun mapRes!15003 () Bool)

(declare-fun tp!29648 () Bool)

(assert (=> mapNonEmpty!15003 (= mapRes!15003 (and tp!29648 e!228620))))

(declare-fun mapValue!15003 () ValueCell!4136)

(declare-fun mapRest!15003 () (Array (_ BitVec 32) ValueCell!4136))

(declare-fun mapKey!15003 () (_ BitVec 32))

(assert (=> mapNonEmpty!15003 (= (arr!10375 _values!506) (store mapRest!15003 mapKey!15003 mapValue!15003))))

(declare-fun b!375245 () Bool)

(declare-fun e!228621 () Bool)

(assert (=> b!375245 (= e!228624 e!228621)))

(declare-fun res!211899 () Bool)

(assert (=> b!375245 (=> res!211899 e!228621)))

(assert (=> b!375245 (= res!211899 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173713 () ListLongMap!4921)

(declare-fun lt!173697 () ListLongMap!4921)

(assert (=> b!375245 (= lt!173713 lt!173697)))

(declare-fun lt!173701 () ListLongMap!4921)

(assert (=> b!375245 (= lt!173697 (+!817 lt!173701 lt!173706))))

(declare-fun lt!173709 () Unit!11537)

(declare-fun addCommutativeForDiffKeys!245 (ListLongMap!4921 (_ BitVec 64) V!13051 (_ BitVec 64) V!13051) Unit!11537)

(assert (=> b!375245 (= lt!173709 (addCommutativeForDiffKeys!245 lt!173708 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!173698 () tuple2!5994)

(assert (=> b!375245 (= lt!173700 (+!817 lt!173713 lt!173698))))

(declare-fun lt!173711 () tuple2!5994)

(assert (=> b!375245 (= lt!173713 (+!817 lt!173707 lt!173711))))

(declare-fun lt!173702 () ListLongMap!4921)

(assert (=> b!375245 (= lt!173704 lt!173702)))

(assert (=> b!375245 (= lt!173702 (+!817 lt!173701 lt!173698))))

(assert (=> b!375245 (= lt!173701 (+!817 lt!173708 lt!173711))))

(assert (=> b!375245 (= lt!173700 (+!817 (+!817 lt!173710 lt!173711) lt!173698))))

(assert (=> b!375245 (= lt!173698 (tuple2!5995 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!375245 (= lt!173711 (tuple2!5995 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375246 () Bool)

(declare-fun res!211904 () Bool)

(assert (=> b!375246 (=> (not res!211904) (not e!228626))))

(assert (=> b!375246 (= res!211904 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10726 _keys!658))))))

(declare-fun b!375247 () Bool)

(declare-fun res!211901 () Bool)

(assert (=> b!375247 (=> (not res!211901) (not e!228626))))

(declare-fun arrayContainsKey!0 (array!21817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375247 (= res!211901 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!375248 () Bool)

(declare-fun res!211898 () Bool)

(assert (=> b!375248 (=> (not res!211898) (not e!228626))))

(assert (=> b!375248 (= res!211898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375249 () Bool)

(declare-fun e!228623 () Bool)

(assert (=> b!375249 (= e!228623 tp_is_empty!8959)))

(declare-fun b!375250 () Bool)

(assert (=> b!375250 (= e!228622 (and e!228623 mapRes!15003))))

(declare-fun condMapEmpty!15003 () Bool)

(declare-fun mapDefault!15003 () ValueCell!4136)

