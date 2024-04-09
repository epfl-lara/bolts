; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37258 () Bool)

(assert start!37258)

(declare-fun b_free!8377 () Bool)

(declare-fun b_next!8377 () Bool)

(assert (=> start!37258 (= b_free!8377 (not b_next!8377))))

(declare-fun tp!29847 () Bool)

(declare-fun b_and!15637 () Bool)

(assert (=> start!37258 (= tp!29847 b_and!15637)))

(declare-fun b!376731 () Bool)

(declare-fun res!213094 () Bool)

(declare-fun e!229415 () Bool)

(assert (=> b!376731 (=> (not res!213094) (not e!229415))))

(declare-datatypes ((array!21949 0))(
  ( (array!21950 (arr!10440 (Array (_ BitVec 32) (_ BitVec 64))) (size!10792 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21949)

(declare-datatypes ((List!5916 0))(
  ( (Nil!5913) (Cons!5912 (h!6768 (_ BitVec 64)) (t!11074 List!5916)) )
))
(declare-fun arrayNoDuplicates!0 (array!21949 (_ BitVec 32) List!5916) Bool)

(assert (=> b!376731 (= res!213094 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5913))))

(declare-fun b!376732 () Bool)

(declare-fun res!213092 () Bool)

(assert (=> b!376732 (=> (not res!213092) (not e!229415))))

(declare-datatypes ((V!13139 0))(
  ( (V!13140 (val!4557 Int)) )
))
(declare-datatypes ((ValueCell!4169 0))(
  ( (ValueCellFull!4169 (v!6750 V!13139)) (EmptyCell!4169) )
))
(declare-datatypes ((array!21951 0))(
  ( (array!21952 (arr!10441 (Array (_ BitVec 32) ValueCell!4169)) (size!10793 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21951)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376732 (= res!213092 (and (= (size!10793 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10792 _keys!658) (size!10793 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376733 () Bool)

(declare-fun res!213091 () Bool)

(assert (=> b!376733 (=> (not res!213091) (not e!229415))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376733 (= res!213091 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10792 _keys!658))))))

(declare-fun res!213093 () Bool)

(assert (=> start!37258 (=> (not res!213093) (not e!229415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37258 (= res!213093 (validMask!0 mask!970))))

(assert (=> start!37258 e!229415))

(declare-fun e!229416 () Bool)

(declare-fun array_inv!7688 (array!21951) Bool)

(assert (=> start!37258 (and (array_inv!7688 _values!506) e!229416)))

(assert (=> start!37258 tp!29847))

(assert (=> start!37258 true))

(declare-fun tp_is_empty!9025 () Bool)

(assert (=> start!37258 tp_is_empty!9025))

(declare-fun array_inv!7689 (array!21949) Bool)

(assert (=> start!37258 (array_inv!7689 _keys!658)))

(declare-fun mapNonEmpty!15102 () Bool)

(declare-fun mapRes!15102 () Bool)

(declare-fun tp!29846 () Bool)

(declare-fun e!229413 () Bool)

(assert (=> mapNonEmpty!15102 (= mapRes!15102 (and tp!29846 e!229413))))

(declare-fun mapValue!15102 () ValueCell!4169)

(declare-fun mapKey!15102 () (_ BitVec 32))

(declare-fun mapRest!15102 () (Array (_ BitVec 32) ValueCell!4169))

(assert (=> mapNonEmpty!15102 (= (arr!10441 _values!506) (store mapRest!15102 mapKey!15102 mapValue!15102))))

(declare-fun b!376734 () Bool)

(declare-fun res!213096 () Bool)

(assert (=> b!376734 (=> (not res!213096) (not e!229415))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376734 (= res!213096 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!376735 () Bool)

(declare-fun e!229418 () Bool)

(assert (=> b!376735 (= e!229418 (bvsle #b00000000000000000000000000000000 (size!10792 _keys!658)))))

(declare-datatypes ((tuple2!6046 0))(
  ( (tuple2!6047 (_1!3033 (_ BitVec 64)) (_2!3033 V!13139)) )
))
(declare-datatypes ((List!5917 0))(
  ( (Nil!5914) (Cons!5913 (h!6769 tuple2!6046) (t!11075 List!5917)) )
))
(declare-datatypes ((ListLongMap!4973 0))(
  ( (ListLongMap!4974 (toList!2502 List!5917)) )
))
(declare-fun lt!175015 () ListLongMap!4973)

(declare-fun lt!175024 () ListLongMap!4973)

(declare-fun lt!175018 () tuple2!6046)

(declare-fun +!843 (ListLongMap!4973 tuple2!6046) ListLongMap!4973)

(assert (=> b!376735 (= lt!175015 (+!843 lt!175024 lt!175018))))

(declare-fun v!373 () V!13139)

(declare-fun lt!175019 () ListLongMap!4973)

(declare-fun zeroValue!472 () V!13139)

(declare-datatypes ((Unit!11587 0))(
  ( (Unit!11588) )
))
(declare-fun lt!175016 () Unit!11587)

(declare-fun addCommutativeForDiffKeys!265 (ListLongMap!4973 (_ BitVec 64) V!13139 (_ BitVec 64) V!13139) Unit!11587)

(assert (=> b!376735 (= lt!175016 (addCommutativeForDiffKeys!265 lt!175019 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapIsEmpty!15102 () Bool)

(assert (=> mapIsEmpty!15102 mapRes!15102))

(declare-fun b!376736 () Bool)

(declare-fun e!229414 () Bool)

(declare-fun e!229412 () Bool)

(assert (=> b!376736 (= e!229414 (not e!229412))))

(declare-fun res!213095 () Bool)

(assert (=> b!376736 (=> res!213095 e!229412)))

(assert (=> b!376736 (= res!213095 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!175023 () ListLongMap!4973)

(declare-fun minValue!472 () V!13139)

(declare-fun getCurrentListMap!1940 (array!21949 array!21951 (_ BitVec 32) (_ BitVec 32) V!13139 V!13139 (_ BitVec 32) Int) ListLongMap!4973)

(assert (=> b!376736 (= lt!175023 (getCurrentListMap!1940 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175022 () array!21951)

(declare-fun lt!175012 () ListLongMap!4973)

(declare-fun lt!175017 () array!21949)

(assert (=> b!376736 (= lt!175012 (getCurrentListMap!1940 lt!175017 lt!175022 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175013 () ListLongMap!4973)

(declare-fun lt!175020 () ListLongMap!4973)

(assert (=> b!376736 (and (= lt!175013 lt!175020) (= lt!175020 lt!175013))))

(assert (=> b!376736 (= lt!175020 (+!843 lt!175019 lt!175018))))

(assert (=> b!376736 (= lt!175018 (tuple2!6047 k!778 v!373))))

(declare-fun lt!175014 () Unit!11587)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!91 (array!21949 array!21951 (_ BitVec 32) (_ BitVec 32) V!13139 V!13139 (_ BitVec 32) (_ BitVec 64) V!13139 (_ BitVec 32) Int) Unit!11587)

(assert (=> b!376736 (= lt!175014 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!91 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!758 (array!21949 array!21951 (_ BitVec 32) (_ BitVec 32) V!13139 V!13139 (_ BitVec 32) Int) ListLongMap!4973)

(assert (=> b!376736 (= lt!175013 (getCurrentListMapNoExtraKeys!758 lt!175017 lt!175022 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376736 (= lt!175022 (array!21952 (store (arr!10441 _values!506) i!548 (ValueCellFull!4169 v!373)) (size!10793 _values!506)))))

(assert (=> b!376736 (= lt!175019 (getCurrentListMapNoExtraKeys!758 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376737 () Bool)

(declare-fun res!213099 () Bool)

(assert (=> b!376737 (=> (not res!213099) (not e!229415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376737 (= res!213099 (validKeyInArray!0 k!778))))

(declare-fun b!376738 () Bool)

(declare-fun res!213090 () Bool)

(assert (=> b!376738 (=> (not res!213090) (not e!229415))))

(assert (=> b!376738 (= res!213090 (or (= (select (arr!10440 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10440 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376739 () Bool)

(assert (=> b!376739 (= e!229413 tp_is_empty!9025)))

(declare-fun b!376740 () Bool)

(declare-fun res!213101 () Bool)

(assert (=> b!376740 (=> (not res!213101) (not e!229414))))

(assert (=> b!376740 (= res!213101 (arrayNoDuplicates!0 lt!175017 #b00000000000000000000000000000000 Nil!5913))))

(declare-fun b!376741 () Bool)

(assert (=> b!376741 (= e!229412 e!229418)))

(declare-fun res!213097 () Bool)

(assert (=> b!376741 (=> res!213097 e!229418)))

(assert (=> b!376741 (= res!213097 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!376741 (= lt!175012 lt!175015)))

(declare-fun lt!175021 () tuple2!6046)

(assert (=> b!376741 (= lt!175015 (+!843 lt!175020 lt!175021))))

(assert (=> b!376741 (= lt!175023 lt!175024)))

(assert (=> b!376741 (= lt!175024 (+!843 lt!175019 lt!175021))))

(assert (=> b!376741 (= lt!175012 (+!843 lt!175013 lt!175021))))

(assert (=> b!376741 (= lt!175021 (tuple2!6047 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376742 () Bool)

(declare-fun e!229417 () Bool)

(assert (=> b!376742 (= e!229417 tp_is_empty!9025)))

(declare-fun b!376743 () Bool)

(declare-fun res!213100 () Bool)

(assert (=> b!376743 (=> (not res!213100) (not e!229415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21949 (_ BitVec 32)) Bool)

(assert (=> b!376743 (= res!213100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376744 () Bool)

(assert (=> b!376744 (= e!229415 e!229414)))

(declare-fun res!213098 () Bool)

(assert (=> b!376744 (=> (not res!213098) (not e!229414))))

(assert (=> b!376744 (= res!213098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175017 mask!970))))

(assert (=> b!376744 (= lt!175017 (array!21950 (store (arr!10440 _keys!658) i!548 k!778) (size!10792 _keys!658)))))

(declare-fun b!376745 () Bool)

(assert (=> b!376745 (= e!229416 (and e!229417 mapRes!15102))))

(declare-fun condMapEmpty!15102 () Bool)

(declare-fun mapDefault!15102 () ValueCell!4169)

