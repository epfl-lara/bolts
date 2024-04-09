; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39602 () Bool)

(assert start!39602)

(declare-fun b_free!9861 () Bool)

(declare-fun b_next!9861 () Bool)

(assert (=> start!39602 (= b_free!9861 (not b_next!9861))))

(declare-fun tp!35112 () Bool)

(declare-fun b_and!17535 () Bool)

(assert (=> start!39602 (= tp!35112 b_and!17535)))

(declare-fun b!423924 () Bool)

(declare-fun res!247982 () Bool)

(declare-fun e!251902 () Bool)

(assert (=> b!423924 (=> (not res!247982) (not e!251902))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25853 0))(
  ( (array!25854 (arr!12373 (Array (_ BitVec 32) (_ BitVec 64))) (size!12725 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25853)

(assert (=> b!423924 (= res!247982 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12725 _keys!709))))))

(declare-fun b!423925 () Bool)

(declare-fun e!251905 () Bool)

(declare-fun tp_is_empty!11013 () Bool)

(assert (=> b!423925 (= e!251905 tp_is_empty!11013)))

(declare-fun b!423926 () Bool)

(declare-fun res!247983 () Bool)

(assert (=> b!423926 (=> (not res!247983) (not e!251902))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423926 (= res!247983 (validKeyInArray!0 k0!794))))

(declare-fun mapNonEmpty!18141 () Bool)

(declare-fun mapRes!18141 () Bool)

(declare-fun tp!35111 () Bool)

(assert (=> mapNonEmpty!18141 (= mapRes!18141 (and tp!35111 e!251905))))

(declare-datatypes ((V!15789 0))(
  ( (V!15790 (val!5551 Int)) )
))
(declare-datatypes ((ValueCell!5163 0))(
  ( (ValueCellFull!5163 (v!7794 V!15789)) (EmptyCell!5163) )
))
(declare-fun mapValue!18141 () ValueCell!5163)

(declare-fun mapKey!18141 () (_ BitVec 32))

(declare-datatypes ((array!25855 0))(
  ( (array!25856 (arr!12374 (Array (_ BitVec 32) ValueCell!5163)) (size!12726 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25855)

(declare-fun mapRest!18141 () (Array (_ BitVec 32) ValueCell!5163))

(assert (=> mapNonEmpty!18141 (= (arr!12374 _values!549) (store mapRest!18141 mapKey!18141 mapValue!18141))))

(declare-fun b!423927 () Bool)

(declare-fun e!251901 () Bool)

(assert (=> b!423927 (= e!251901 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!194268 () array!25853)

(declare-fun minValue!515 () V!15789)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15789)

(declare-fun v!412 () V!15789)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7220 0))(
  ( (tuple2!7221 (_1!3620 (_ BitVec 64)) (_2!3620 V!15789)) )
))
(declare-datatypes ((List!7266 0))(
  ( (Nil!7263) (Cons!7262 (h!8118 tuple2!7220) (t!12718 List!7266)) )
))
(declare-datatypes ((ListLongMap!6147 0))(
  ( (ListLongMap!6148 (toList!3089 List!7266)) )
))
(declare-fun lt!194266 () ListLongMap!6147)

(declare-fun getCurrentListMapNoExtraKeys!1290 (array!25853 array!25855 (_ BitVec 32) (_ BitVec 32) V!15789 V!15789 (_ BitVec 32) Int) ListLongMap!6147)

(assert (=> b!423927 (= lt!194266 (getCurrentListMapNoExtraKeys!1290 lt!194268 (array!25856 (store (arr!12374 _values!549) i!563 (ValueCellFull!5163 v!412)) (size!12726 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194267 () ListLongMap!6147)

(assert (=> b!423927 (= lt!194267 (getCurrentListMapNoExtraKeys!1290 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!247984 () Bool)

(assert (=> start!39602 (=> (not res!247984) (not e!251902))))

(assert (=> start!39602 (= res!247984 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12725 _keys!709))))))

(assert (=> start!39602 e!251902))

(assert (=> start!39602 tp_is_empty!11013))

(assert (=> start!39602 tp!35112))

(assert (=> start!39602 true))

(declare-fun e!251903 () Bool)

(declare-fun array_inv!9018 (array!25855) Bool)

(assert (=> start!39602 (and (array_inv!9018 _values!549) e!251903)))

(declare-fun array_inv!9019 (array!25853) Bool)

(assert (=> start!39602 (array_inv!9019 _keys!709)))

(declare-fun b!423928 () Bool)

(declare-fun res!247977 () Bool)

(assert (=> b!423928 (=> (not res!247977) (not e!251902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25853 (_ BitVec 32)) Bool)

(assert (=> b!423928 (= res!247977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423929 () Bool)

(declare-fun res!247986 () Bool)

(assert (=> b!423929 (=> (not res!247986) (not e!251901))))

(declare-datatypes ((List!7267 0))(
  ( (Nil!7264) (Cons!7263 (h!8119 (_ BitVec 64)) (t!12719 List!7267)) )
))
(declare-fun arrayNoDuplicates!0 (array!25853 (_ BitVec 32) List!7267) Bool)

(assert (=> b!423929 (= res!247986 (arrayNoDuplicates!0 lt!194268 #b00000000000000000000000000000000 Nil!7264))))

(declare-fun b!423930 () Bool)

(declare-fun res!247980 () Bool)

(assert (=> b!423930 (=> (not res!247980) (not e!251902))))

(assert (=> b!423930 (= res!247980 (or (= (select (arr!12373 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12373 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423931 () Bool)

(declare-fun e!251904 () Bool)

(assert (=> b!423931 (= e!251904 tp_is_empty!11013)))

(declare-fun b!423932 () Bool)

(assert (=> b!423932 (= e!251903 (and e!251904 mapRes!18141))))

(declare-fun condMapEmpty!18141 () Bool)

(declare-fun mapDefault!18141 () ValueCell!5163)

(assert (=> b!423932 (= condMapEmpty!18141 (= (arr!12374 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5163)) mapDefault!18141)))))

(declare-fun b!423933 () Bool)

(assert (=> b!423933 (= e!251902 e!251901)))

(declare-fun res!247978 () Bool)

(assert (=> b!423933 (=> (not res!247978) (not e!251901))))

(assert (=> b!423933 (= res!247978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194268 mask!1025))))

(assert (=> b!423933 (= lt!194268 (array!25854 (store (arr!12373 _keys!709) i!563 k0!794) (size!12725 _keys!709)))))

(declare-fun b!423934 () Bool)

(declare-fun res!247981 () Bool)

(assert (=> b!423934 (=> (not res!247981) (not e!251902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423934 (= res!247981 (validMask!0 mask!1025))))

(declare-fun b!423935 () Bool)

(declare-fun res!247985 () Bool)

(assert (=> b!423935 (=> (not res!247985) (not e!251902))))

(assert (=> b!423935 (= res!247985 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7264))))

(declare-fun b!423936 () Bool)

(declare-fun res!247975 () Bool)

(assert (=> b!423936 (=> (not res!247975) (not e!251901))))

(assert (=> b!423936 (= res!247975 (bvsle from!863 i!563))))

(declare-fun b!423937 () Bool)

(declare-fun res!247979 () Bool)

(assert (=> b!423937 (=> (not res!247979) (not e!251902))))

(declare-fun arrayContainsKey!0 (array!25853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423937 (= res!247979 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!423938 () Bool)

(declare-fun res!247976 () Bool)

(assert (=> b!423938 (=> (not res!247976) (not e!251902))))

(assert (=> b!423938 (= res!247976 (and (= (size!12726 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12725 _keys!709) (size!12726 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18141 () Bool)

(assert (=> mapIsEmpty!18141 mapRes!18141))

(assert (= (and start!39602 res!247984) b!423934))

(assert (= (and b!423934 res!247981) b!423938))

(assert (= (and b!423938 res!247976) b!423928))

(assert (= (and b!423928 res!247977) b!423935))

(assert (= (and b!423935 res!247985) b!423924))

(assert (= (and b!423924 res!247982) b!423926))

(assert (= (and b!423926 res!247983) b!423930))

(assert (= (and b!423930 res!247980) b!423937))

(assert (= (and b!423937 res!247979) b!423933))

(assert (= (and b!423933 res!247978) b!423929))

(assert (= (and b!423929 res!247986) b!423936))

(assert (= (and b!423936 res!247975) b!423927))

(assert (= (and b!423932 condMapEmpty!18141) mapIsEmpty!18141))

(assert (= (and b!423932 (not condMapEmpty!18141)) mapNonEmpty!18141))

(get-info :version)

(assert (= (and mapNonEmpty!18141 ((_ is ValueCellFull!5163) mapValue!18141)) b!423925))

(assert (= (and b!423932 ((_ is ValueCellFull!5163) mapDefault!18141)) b!423931))

(assert (= start!39602 b!423932))

(declare-fun m!413215 () Bool)

(assert (=> b!423926 m!413215))

(declare-fun m!413217 () Bool)

(assert (=> b!423934 m!413217))

(declare-fun m!413219 () Bool)

(assert (=> mapNonEmpty!18141 m!413219))

(declare-fun m!413221 () Bool)

(assert (=> b!423933 m!413221))

(declare-fun m!413223 () Bool)

(assert (=> b!423933 m!413223))

(declare-fun m!413225 () Bool)

(assert (=> b!423929 m!413225))

(declare-fun m!413227 () Bool)

(assert (=> b!423930 m!413227))

(declare-fun m!413229 () Bool)

(assert (=> start!39602 m!413229))

(declare-fun m!413231 () Bool)

(assert (=> start!39602 m!413231))

(declare-fun m!413233 () Bool)

(assert (=> b!423937 m!413233))

(declare-fun m!413235 () Bool)

(assert (=> b!423928 m!413235))

(declare-fun m!413237 () Bool)

(assert (=> b!423927 m!413237))

(declare-fun m!413239 () Bool)

(assert (=> b!423927 m!413239))

(declare-fun m!413241 () Bool)

(assert (=> b!423927 m!413241))

(declare-fun m!413243 () Bool)

(assert (=> b!423935 m!413243))

(check-sat (not start!39602) (not b!423937) (not b!423934) (not b!423935) (not b!423928) (not mapNonEmpty!18141) (not b!423927) (not b_next!9861) (not b!423929) b_and!17535 (not b!423933) tp_is_empty!11013 (not b!423926))
(check-sat b_and!17535 (not b_next!9861))
