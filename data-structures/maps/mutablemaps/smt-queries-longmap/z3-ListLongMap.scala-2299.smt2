; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37266 () Bool)

(assert start!37266)

(declare-fun b_free!8385 () Bool)

(declare-fun b_next!8385 () Bool)

(assert (=> start!37266 (= b_free!8385 (not b_next!8385))))

(declare-fun tp!29870 () Bool)

(declare-fun b_and!15645 () Bool)

(assert (=> start!37266 (= tp!29870 b_and!15645)))

(declare-fun b!376911 () Bool)

(declare-fun res!213244 () Bool)

(declare-fun e!229510 () Bool)

(assert (=> b!376911 (=> (not res!213244) (not e!229510))))

(declare-datatypes ((array!21965 0))(
  ( (array!21966 (arr!10448 (Array (_ BitVec 32) (_ BitVec 64))) (size!10800 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21965)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21965 (_ BitVec 32)) Bool)

(assert (=> b!376911 (= res!213244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376912 () Bool)

(declare-fun res!213241 () Bool)

(assert (=> b!376912 (=> (not res!213241) (not e!229510))))

(declare-datatypes ((List!5922 0))(
  ( (Nil!5919) (Cons!5918 (h!6774 (_ BitVec 64)) (t!11080 List!5922)) )
))
(declare-fun arrayNoDuplicates!0 (array!21965 (_ BitVec 32) List!5922) Bool)

(assert (=> b!376912 (= res!213241 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5919))))

(declare-fun b!376913 () Bool)

(declare-fun e!229511 () Bool)

(declare-fun e!229514 () Bool)

(assert (=> b!376913 (= e!229511 (not e!229514))))

(declare-fun res!213242 () Bool)

(assert (=> b!376913 (=> res!213242 e!229514)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376913 (= res!213242 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13149 0))(
  ( (V!13150 (val!4561 Int)) )
))
(declare-datatypes ((ValueCell!4173 0))(
  ( (ValueCellFull!4173 (v!6754 V!13149)) (EmptyCell!4173) )
))
(declare-datatypes ((array!21967 0))(
  ( (array!21968 (arr!10449 (Array (_ BitVec 32) ValueCell!4173)) (size!10801 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21967)

(declare-datatypes ((tuple2!6052 0))(
  ( (tuple2!6053 (_1!3036 (_ BitVec 64)) (_2!3036 V!13149)) )
))
(declare-datatypes ((List!5923 0))(
  ( (Nil!5920) (Cons!5919 (h!6775 tuple2!6052) (t!11081 List!5923)) )
))
(declare-datatypes ((ListLongMap!4979 0))(
  ( (ListLongMap!4980 (toList!2505 List!5923)) )
))
(declare-fun lt!175169 () ListLongMap!4979)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13149)

(declare-fun minValue!472 () V!13149)

(declare-fun getCurrentListMap!1943 (array!21965 array!21967 (_ BitVec 32) (_ BitVec 32) V!13149 V!13149 (_ BitVec 32) Int) ListLongMap!4979)

(assert (=> b!376913 (= lt!175169 (getCurrentListMap!1943 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175173 () ListLongMap!4979)

(declare-fun lt!175176 () array!21967)

(declare-fun lt!175175 () array!21965)

(assert (=> b!376913 (= lt!175173 (getCurrentListMap!1943 lt!175175 lt!175176 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175168 () ListLongMap!4979)

(declare-fun lt!175178 () ListLongMap!4979)

(assert (=> b!376913 (and (= lt!175168 lt!175178) (= lt!175178 lt!175168))))

(declare-fun lt!175180 () ListLongMap!4979)

(declare-fun lt!175172 () tuple2!6052)

(declare-fun +!846 (ListLongMap!4979 tuple2!6052) ListLongMap!4979)

(assert (=> b!376913 (= lt!175178 (+!846 lt!175180 lt!175172))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13149)

(assert (=> b!376913 (= lt!175172 (tuple2!6053 k0!778 v!373))))

(declare-datatypes ((Unit!11593 0))(
  ( (Unit!11594) )
))
(declare-fun lt!175171 () Unit!11593)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!94 (array!21965 array!21967 (_ BitVec 32) (_ BitVec 32) V!13149 V!13149 (_ BitVec 32) (_ BitVec 64) V!13149 (_ BitVec 32) Int) Unit!11593)

(assert (=> b!376913 (= lt!175171 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!94 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!761 (array!21965 array!21967 (_ BitVec 32) (_ BitVec 32) V!13149 V!13149 (_ BitVec 32) Int) ListLongMap!4979)

(assert (=> b!376913 (= lt!175168 (getCurrentListMapNoExtraKeys!761 lt!175175 lt!175176 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376913 (= lt!175176 (array!21968 (store (arr!10449 _values!506) i!548 (ValueCellFull!4173 v!373)) (size!10801 _values!506)))))

(assert (=> b!376913 (= lt!175180 (getCurrentListMapNoExtraKeys!761 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376914 () Bool)

(declare-fun res!213243 () Bool)

(assert (=> b!376914 (=> (not res!213243) (not e!229510))))

(assert (=> b!376914 (= res!213243 (and (= (size!10801 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10800 _keys!658) (size!10801 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376915 () Bool)

(assert (=> b!376915 (= e!229510 e!229511)))

(declare-fun res!213240 () Bool)

(assert (=> b!376915 (=> (not res!213240) (not e!229511))))

(assert (=> b!376915 (= res!213240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175175 mask!970))))

(assert (=> b!376915 (= lt!175175 (array!21966 (store (arr!10448 _keys!658) i!548 k0!778) (size!10800 _keys!658)))))

(declare-fun b!376916 () Bool)

(declare-fun e!229515 () Bool)

(declare-fun tp_is_empty!9033 () Bool)

(assert (=> b!376916 (= e!229515 tp_is_empty!9033)))

(declare-fun b!376917 () Bool)

(declare-fun e!229512 () Bool)

(assert (=> b!376917 (= e!229514 e!229512)))

(declare-fun res!213235 () Bool)

(assert (=> b!376917 (=> res!213235 e!229512)))

(assert (=> b!376917 (= res!213235 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!175179 () ListLongMap!4979)

(assert (=> b!376917 (= lt!175173 lt!175179)))

(declare-fun lt!175174 () tuple2!6052)

(assert (=> b!376917 (= lt!175179 (+!846 lt!175178 lt!175174))))

(declare-fun lt!175170 () ListLongMap!4979)

(assert (=> b!376917 (= lt!175169 lt!175170)))

(assert (=> b!376917 (= lt!175170 (+!846 lt!175180 lt!175174))))

(assert (=> b!376917 (= lt!175173 (+!846 lt!175168 lt!175174))))

(assert (=> b!376917 (= lt!175174 (tuple2!6053 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376918 () Bool)

(declare-fun res!213234 () Bool)

(assert (=> b!376918 (=> (not res!213234) (not e!229510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376918 (= res!213234 (validKeyInArray!0 k0!778))))

(declare-fun res!213238 () Bool)

(assert (=> start!37266 (=> (not res!213238) (not e!229510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37266 (= res!213238 (validMask!0 mask!970))))

(assert (=> start!37266 e!229510))

(declare-fun e!229509 () Bool)

(declare-fun array_inv!7694 (array!21967) Bool)

(assert (=> start!37266 (and (array_inv!7694 _values!506) e!229509)))

(assert (=> start!37266 tp!29870))

(assert (=> start!37266 true))

(assert (=> start!37266 tp_is_empty!9033))

(declare-fun array_inv!7695 (array!21965) Bool)

(assert (=> start!37266 (array_inv!7695 _keys!658)))

(declare-fun b!376919 () Bool)

(declare-fun res!213245 () Bool)

(assert (=> b!376919 (=> (not res!213245) (not e!229510))))

(assert (=> b!376919 (= res!213245 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10800 _keys!658))))))

(declare-fun b!376920 () Bool)

(declare-fun e!229513 () Bool)

(declare-fun mapRes!15114 () Bool)

(assert (=> b!376920 (= e!229509 (and e!229513 mapRes!15114))))

(declare-fun condMapEmpty!15114 () Bool)

(declare-fun mapDefault!15114 () ValueCell!4173)

(assert (=> b!376920 (= condMapEmpty!15114 (= (arr!10449 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4173)) mapDefault!15114)))))

(declare-fun b!376921 () Bool)

(declare-fun res!213237 () Bool)

(assert (=> b!376921 (=> (not res!213237) (not e!229510))))

(assert (=> b!376921 (= res!213237 (or (= (select (arr!10448 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10448 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15114 () Bool)

(declare-fun tp!29871 () Bool)

(assert (=> mapNonEmpty!15114 (= mapRes!15114 (and tp!29871 e!229515))))

(declare-fun mapValue!15114 () ValueCell!4173)

(declare-fun mapKey!15114 () (_ BitVec 32))

(declare-fun mapRest!15114 () (Array (_ BitVec 32) ValueCell!4173))

(assert (=> mapNonEmpty!15114 (= (arr!10449 _values!506) (store mapRest!15114 mapKey!15114 mapValue!15114))))

(declare-fun b!376922 () Bool)

(declare-fun res!213236 () Bool)

(assert (=> b!376922 (=> (not res!213236) (not e!229511))))

(assert (=> b!376922 (= res!213236 (arrayNoDuplicates!0 lt!175175 #b00000000000000000000000000000000 Nil!5919))))

(declare-fun mapIsEmpty!15114 () Bool)

(assert (=> mapIsEmpty!15114 mapRes!15114))

(declare-fun b!376923 () Bool)

(declare-fun res!213239 () Bool)

(assert (=> b!376923 (=> (not res!213239) (not e!229510))))

(declare-fun arrayContainsKey!0 (array!21965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376923 (= res!213239 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!376924 () Bool)

(assert (=> b!376924 (= e!229513 tp_is_empty!9033)))

(declare-fun b!376925 () Bool)

(assert (=> b!376925 (= e!229512 true)))

(assert (=> b!376925 (= lt!175179 (+!846 lt!175170 lt!175172))))

(declare-fun lt!175177 () Unit!11593)

(declare-fun addCommutativeForDiffKeys!268 (ListLongMap!4979 (_ BitVec 64) V!13149 (_ BitVec 64) V!13149) Unit!11593)

(assert (=> b!376925 (= lt!175177 (addCommutativeForDiffKeys!268 lt!175180 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (= (and start!37266 res!213238) b!376914))

(assert (= (and b!376914 res!213243) b!376911))

(assert (= (and b!376911 res!213244) b!376912))

(assert (= (and b!376912 res!213241) b!376919))

(assert (= (and b!376919 res!213245) b!376918))

(assert (= (and b!376918 res!213234) b!376921))

(assert (= (and b!376921 res!213237) b!376923))

(assert (= (and b!376923 res!213239) b!376915))

(assert (= (and b!376915 res!213240) b!376922))

(assert (= (and b!376922 res!213236) b!376913))

(assert (= (and b!376913 (not res!213242)) b!376917))

(assert (= (and b!376917 (not res!213235)) b!376925))

(assert (= (and b!376920 condMapEmpty!15114) mapIsEmpty!15114))

(assert (= (and b!376920 (not condMapEmpty!15114)) mapNonEmpty!15114))

(get-info :version)

(assert (= (and mapNonEmpty!15114 ((_ is ValueCellFull!4173) mapValue!15114)) b!376916))

(assert (= (and b!376920 ((_ is ValueCellFull!4173) mapDefault!15114)) b!376924))

(assert (= start!37266 b!376920))

(declare-fun m!373697 () Bool)

(assert (=> b!376912 m!373697))

(declare-fun m!373699 () Bool)

(assert (=> b!376923 m!373699))

(declare-fun m!373701 () Bool)

(assert (=> b!376922 m!373701))

(declare-fun m!373703 () Bool)

(assert (=> b!376915 m!373703))

(declare-fun m!373705 () Bool)

(assert (=> b!376915 m!373705))

(declare-fun m!373707 () Bool)

(assert (=> start!37266 m!373707))

(declare-fun m!373709 () Bool)

(assert (=> start!37266 m!373709))

(declare-fun m!373711 () Bool)

(assert (=> start!37266 m!373711))

(declare-fun m!373713 () Bool)

(assert (=> b!376911 m!373713))

(declare-fun m!373715 () Bool)

(assert (=> b!376921 m!373715))

(declare-fun m!373717 () Bool)

(assert (=> mapNonEmpty!15114 m!373717))

(declare-fun m!373719 () Bool)

(assert (=> b!376925 m!373719))

(declare-fun m!373721 () Bool)

(assert (=> b!376925 m!373721))

(declare-fun m!373723 () Bool)

(assert (=> b!376918 m!373723))

(declare-fun m!373725 () Bool)

(assert (=> b!376913 m!373725))

(declare-fun m!373727 () Bool)

(assert (=> b!376913 m!373727))

(declare-fun m!373729 () Bool)

(assert (=> b!376913 m!373729))

(declare-fun m!373731 () Bool)

(assert (=> b!376913 m!373731))

(declare-fun m!373733 () Bool)

(assert (=> b!376913 m!373733))

(declare-fun m!373735 () Bool)

(assert (=> b!376913 m!373735))

(declare-fun m!373737 () Bool)

(assert (=> b!376913 m!373737))

(declare-fun m!373739 () Bool)

(assert (=> b!376917 m!373739))

(declare-fun m!373741 () Bool)

(assert (=> b!376917 m!373741))

(declare-fun m!373743 () Bool)

(assert (=> b!376917 m!373743))

(check-sat b_and!15645 (not b!376912) (not b!376915) (not b!376925) (not b!376922) (not b!376918) (not b!376911) (not b!376917) tp_is_empty!9033 (not mapNonEmpty!15114) (not b_next!8385) (not start!37266) (not b!376913) (not b!376923))
(check-sat b_and!15645 (not b_next!8385))
