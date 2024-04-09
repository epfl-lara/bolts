; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37410 () Bool)

(assert start!37410)

(declare-fun b_free!8529 () Bool)

(declare-fun b_next!8529 () Bool)

(assert (=> start!37410 (= b_free!8529 (not b_next!8529))))

(declare-fun tp!30303 () Bool)

(declare-fun b_and!15789 () Bool)

(assert (=> start!37410 (= tp!30303 b_and!15789)))

(declare-fun b!380160 () Bool)

(declare-fun res!215838 () Bool)

(declare-fun e!231237 () Bool)

(assert (=> b!380160 (=> (not res!215838) (not e!231237))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13341 0))(
  ( (V!13342 (val!4633 Int)) )
))
(declare-datatypes ((ValueCell!4245 0))(
  ( (ValueCellFull!4245 (v!6826 V!13341)) (EmptyCell!4245) )
))
(declare-datatypes ((array!22251 0))(
  ( (array!22252 (arr!10591 (Array (_ BitVec 32) ValueCell!4245)) (size!10943 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22251)

(declare-datatypes ((array!22253 0))(
  ( (array!22254 (arr!10592 (Array (_ BitVec 32) (_ BitVec 64))) (size!10944 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22253)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!380160 (= res!215838 (and (= (size!10943 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10944 _keys!658) (size!10943 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380161 () Bool)

(declare-fun e!231243 () Bool)

(assert (=> b!380161 (= e!231237 e!231243)))

(declare-fun res!215840 () Bool)

(assert (=> b!380161 (=> (not res!215840) (not e!231243))))

(declare-fun lt!177952 () array!22253)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22253 (_ BitVec 32)) Bool)

(assert (=> b!380161 (= res!215840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177952 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380161 (= lt!177952 (array!22254 (store (arr!10592 _keys!658) i!548 k0!778) (size!10944 _keys!658)))))

(declare-fun b!380163 () Bool)

(declare-fun e!231240 () Bool)

(declare-fun tp_is_empty!9177 () Bool)

(assert (=> b!380163 (= e!231240 tp_is_empty!9177)))

(declare-fun mapNonEmpty!15330 () Bool)

(declare-fun mapRes!15330 () Bool)

(declare-fun tp!30302 () Bool)

(declare-fun e!231241 () Bool)

(assert (=> mapNonEmpty!15330 (= mapRes!15330 (and tp!30302 e!231241))))

(declare-fun mapKey!15330 () (_ BitVec 32))

(declare-fun mapValue!15330 () ValueCell!4245)

(declare-fun mapRest!15330 () (Array (_ BitVec 32) ValueCell!4245))

(assert (=> mapNonEmpty!15330 (= (arr!10591 _values!506) (store mapRest!15330 mapKey!15330 mapValue!15330))))

(declare-fun b!380164 () Bool)

(declare-fun e!231242 () Bool)

(declare-fun e!231236 () Bool)

(assert (=> b!380164 (= e!231242 e!231236)))

(declare-fun res!215844 () Bool)

(assert (=> b!380164 (=> res!215844 e!231236)))

(assert (=> b!380164 (= res!215844 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6174 0))(
  ( (tuple2!6175 (_1!3097 (_ BitVec 64)) (_2!3097 V!13341)) )
))
(declare-datatypes ((List!6045 0))(
  ( (Nil!6042) (Cons!6041 (h!6897 tuple2!6174) (t!11203 List!6045)) )
))
(declare-datatypes ((ListLongMap!5101 0))(
  ( (ListLongMap!5102 (toList!2566 List!6045)) )
))
(declare-fun lt!177951 () ListLongMap!5101)

(declare-fun lt!177940 () ListLongMap!5101)

(assert (=> b!380164 (= lt!177951 lt!177940)))

(declare-fun lt!177943 () ListLongMap!5101)

(declare-fun lt!177948 () tuple2!6174)

(declare-fun +!907 (ListLongMap!5101 tuple2!6174) ListLongMap!5101)

(assert (=> b!380164 (= lt!177940 (+!907 lt!177943 lt!177948))))

(declare-fun lt!177949 () ListLongMap!5101)

(declare-fun lt!177946 () ListLongMap!5101)

(assert (=> b!380164 (= lt!177949 lt!177946)))

(declare-fun lt!177945 () ListLongMap!5101)

(assert (=> b!380164 (= lt!177946 (+!907 lt!177945 lt!177948))))

(declare-fun lt!177950 () ListLongMap!5101)

(assert (=> b!380164 (= lt!177949 (+!907 lt!177950 lt!177948))))

(declare-fun minValue!472 () V!13341)

(assert (=> b!380164 (= lt!177948 (tuple2!6175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380165 () Bool)

(declare-fun res!215843 () Bool)

(assert (=> b!380165 (=> (not res!215843) (not e!231237))))

(assert (=> b!380165 (= res!215843 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10944 _keys!658))))))

(declare-fun b!380166 () Bool)

(declare-fun res!215841 () Bool)

(assert (=> b!380166 (=> (not res!215841) (not e!231237))))

(assert (=> b!380166 (= res!215841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380167 () Bool)

(assert (=> b!380167 (= e!231243 (not e!231242))))

(declare-fun res!215846 () Bool)

(assert (=> b!380167 (=> res!215846 e!231242)))

(assert (=> b!380167 (= res!215846 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13341)

(declare-fun getCurrentListMap!1991 (array!22253 array!22251 (_ BitVec 32) (_ BitVec 32) V!13341 V!13341 (_ BitVec 32) Int) ListLongMap!5101)

(assert (=> b!380167 (= lt!177951 (getCurrentListMap!1991 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177941 () array!22251)

(assert (=> b!380167 (= lt!177949 (getCurrentListMap!1991 lt!177952 lt!177941 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380167 (and (= lt!177950 lt!177945) (= lt!177945 lt!177950))))

(declare-fun lt!177944 () tuple2!6174)

(assert (=> b!380167 (= lt!177945 (+!907 lt!177943 lt!177944))))

(declare-fun v!373 () V!13341)

(assert (=> b!380167 (= lt!177944 (tuple2!6175 k0!778 v!373))))

(declare-datatypes ((Unit!11709 0))(
  ( (Unit!11710) )
))
(declare-fun lt!177942 () Unit!11709)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!142 (array!22253 array!22251 (_ BitVec 32) (_ BitVec 32) V!13341 V!13341 (_ BitVec 32) (_ BitVec 64) V!13341 (_ BitVec 32) Int) Unit!11709)

(assert (=> b!380167 (= lt!177942 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!142 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!809 (array!22253 array!22251 (_ BitVec 32) (_ BitVec 32) V!13341 V!13341 (_ BitVec 32) Int) ListLongMap!5101)

(assert (=> b!380167 (= lt!177950 (getCurrentListMapNoExtraKeys!809 lt!177952 lt!177941 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380167 (= lt!177941 (array!22252 (store (arr!10591 _values!506) i!548 (ValueCellFull!4245 v!373)) (size!10943 _values!506)))))

(assert (=> b!380167 (= lt!177943 (getCurrentListMapNoExtraKeys!809 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15330 () Bool)

(assert (=> mapIsEmpty!15330 mapRes!15330))

(declare-fun b!380168 () Bool)

(declare-fun res!215835 () Bool)

(assert (=> b!380168 (=> (not res!215835) (not e!231237))))

(declare-fun arrayContainsKey!0 (array!22253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380168 (= res!215835 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!215842 () Bool)

(assert (=> start!37410 (=> (not res!215842) (not e!231237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37410 (= res!215842 (validMask!0 mask!970))))

(assert (=> start!37410 e!231237))

(declare-fun e!231239 () Bool)

(declare-fun array_inv!7792 (array!22251) Bool)

(assert (=> start!37410 (and (array_inv!7792 _values!506) e!231239)))

(assert (=> start!37410 tp!30303))

(assert (=> start!37410 true))

(assert (=> start!37410 tp_is_empty!9177))

(declare-fun array_inv!7793 (array!22253) Bool)

(assert (=> start!37410 (array_inv!7793 _keys!658)))

(declare-fun b!380162 () Bool)

(declare-fun res!215845 () Bool)

(assert (=> b!380162 (=> (not res!215845) (not e!231237))))

(assert (=> b!380162 (= res!215845 (or (= (select (arr!10592 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10592 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380169 () Bool)

(declare-fun res!215837 () Bool)

(assert (=> b!380169 (=> (not res!215837) (not e!231243))))

(declare-datatypes ((List!6046 0))(
  ( (Nil!6043) (Cons!6042 (h!6898 (_ BitVec 64)) (t!11204 List!6046)) )
))
(declare-fun arrayNoDuplicates!0 (array!22253 (_ BitVec 32) List!6046) Bool)

(assert (=> b!380169 (= res!215837 (arrayNoDuplicates!0 lt!177952 #b00000000000000000000000000000000 Nil!6043))))

(declare-fun b!380170 () Bool)

(assert (=> b!380170 (= e!231236 true)))

(assert (=> b!380170 (= lt!177946 (+!907 lt!177940 lt!177944))))

(declare-fun lt!177947 () Unit!11709)

(declare-fun addCommutativeForDiffKeys!318 (ListLongMap!5101 (_ BitVec 64) V!13341 (_ BitVec 64) V!13341) Unit!11709)

(assert (=> b!380170 (= lt!177947 (addCommutativeForDiffKeys!318 lt!177943 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380171 () Bool)

(declare-fun res!215836 () Bool)

(assert (=> b!380171 (=> (not res!215836) (not e!231237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380171 (= res!215836 (validKeyInArray!0 k0!778))))

(declare-fun b!380172 () Bool)

(declare-fun res!215839 () Bool)

(assert (=> b!380172 (=> (not res!215839) (not e!231237))))

(assert (=> b!380172 (= res!215839 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6043))))

(declare-fun b!380173 () Bool)

(assert (=> b!380173 (= e!231239 (and e!231240 mapRes!15330))))

(declare-fun condMapEmpty!15330 () Bool)

(declare-fun mapDefault!15330 () ValueCell!4245)

(assert (=> b!380173 (= condMapEmpty!15330 (= (arr!10591 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4245)) mapDefault!15330)))))

(declare-fun b!380174 () Bool)

(assert (=> b!380174 (= e!231241 tp_is_empty!9177)))

(assert (= (and start!37410 res!215842) b!380160))

(assert (= (and b!380160 res!215838) b!380166))

(assert (= (and b!380166 res!215841) b!380172))

(assert (= (and b!380172 res!215839) b!380165))

(assert (= (and b!380165 res!215843) b!380171))

(assert (= (and b!380171 res!215836) b!380162))

(assert (= (and b!380162 res!215845) b!380168))

(assert (= (and b!380168 res!215835) b!380161))

(assert (= (and b!380161 res!215840) b!380169))

(assert (= (and b!380169 res!215837) b!380167))

(assert (= (and b!380167 (not res!215846)) b!380164))

(assert (= (and b!380164 (not res!215844)) b!380170))

(assert (= (and b!380173 condMapEmpty!15330) mapIsEmpty!15330))

(assert (= (and b!380173 (not condMapEmpty!15330)) mapNonEmpty!15330))

(get-info :version)

(assert (= (and mapNonEmpty!15330 ((_ is ValueCellFull!4245) mapValue!15330)) b!380174))

(assert (= (and b!380173 ((_ is ValueCellFull!4245) mapDefault!15330)) b!380163))

(assert (= start!37410 b!380173))

(declare-fun m!377141 () Bool)

(assert (=> b!380170 m!377141))

(declare-fun m!377143 () Bool)

(assert (=> b!380170 m!377143))

(declare-fun m!377145 () Bool)

(assert (=> b!380171 m!377145))

(declare-fun m!377147 () Bool)

(assert (=> b!380162 m!377147))

(declare-fun m!377149 () Bool)

(assert (=> b!380167 m!377149))

(declare-fun m!377151 () Bool)

(assert (=> b!380167 m!377151))

(declare-fun m!377153 () Bool)

(assert (=> b!380167 m!377153))

(declare-fun m!377155 () Bool)

(assert (=> b!380167 m!377155))

(declare-fun m!377157 () Bool)

(assert (=> b!380167 m!377157))

(declare-fun m!377159 () Bool)

(assert (=> b!380167 m!377159))

(declare-fun m!377161 () Bool)

(assert (=> b!380167 m!377161))

(declare-fun m!377163 () Bool)

(assert (=> b!380164 m!377163))

(declare-fun m!377165 () Bool)

(assert (=> b!380164 m!377165))

(declare-fun m!377167 () Bool)

(assert (=> b!380164 m!377167))

(declare-fun m!377169 () Bool)

(assert (=> start!37410 m!377169))

(declare-fun m!377171 () Bool)

(assert (=> start!37410 m!377171))

(declare-fun m!377173 () Bool)

(assert (=> start!37410 m!377173))

(declare-fun m!377175 () Bool)

(assert (=> b!380169 m!377175))

(declare-fun m!377177 () Bool)

(assert (=> b!380166 m!377177))

(declare-fun m!377179 () Bool)

(assert (=> b!380161 m!377179))

(declare-fun m!377181 () Bool)

(assert (=> b!380161 m!377181))

(declare-fun m!377183 () Bool)

(assert (=> b!380172 m!377183))

(declare-fun m!377185 () Bool)

(assert (=> b!380168 m!377185))

(declare-fun m!377187 () Bool)

(assert (=> mapNonEmpty!15330 m!377187))

(check-sat (not b_next!8529) (not start!37410) (not b!380161) tp_is_empty!9177 (not b!380169) (not b!380164) (not b!380171) (not b!380166) (not b!380170) (not mapNonEmpty!15330) (not b!380172) b_and!15789 (not b!380167) (not b!380168))
(check-sat b_and!15789 (not b_next!8529))
