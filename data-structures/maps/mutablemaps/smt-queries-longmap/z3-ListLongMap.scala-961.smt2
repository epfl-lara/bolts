; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20876 () Bool)

(assert start!20876)

(declare-fun b_free!5517 () Bool)

(declare-fun b_next!5517 () Bool)

(assert (=> start!20876 (= b_free!5517 (not b_next!5517))))

(declare-fun tp!19591 () Bool)

(declare-fun b_and!12281 () Bool)

(assert (=> start!20876 (= tp!19591 b_and!12281)))

(declare-fun b!209376 () Bool)

(declare-fun res!102082 () Bool)

(declare-fun e!136419 () Bool)

(assert (=> b!209376 (=> (not res!102082) (not e!136419))))

(declare-datatypes ((array!9954 0))(
  ( (array!9955 (arr!4727 (Array (_ BitVec 32) (_ BitVec 64))) (size!5052 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9954)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9954 (_ BitVec 32)) Bool)

(assert (=> b!209376 (= res!102082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!209377 () Bool)

(declare-fun e!136417 () Bool)

(declare-fun e!136420 () Bool)

(declare-fun mapRes!9137 () Bool)

(assert (=> b!209377 (= e!136417 (and e!136420 mapRes!9137))))

(declare-fun condMapEmpty!9137 () Bool)

(declare-datatypes ((V!6819 0))(
  ( (V!6820 (val!2734 Int)) )
))
(declare-datatypes ((ValueCell!2346 0))(
  ( (ValueCellFull!2346 (v!4700 V!6819)) (EmptyCell!2346) )
))
(declare-datatypes ((array!9956 0))(
  ( (array!9957 (arr!4728 (Array (_ BitVec 32) ValueCell!2346)) (size!5053 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9956)

(declare-fun mapDefault!9137 () ValueCell!2346)

(assert (=> b!209377 (= condMapEmpty!9137 (= (arr!4728 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2346)) mapDefault!9137)))))

(declare-fun b!209378 () Bool)

(declare-fun tp_is_empty!5379 () Bool)

(assert (=> b!209378 (= e!136420 tp_is_empty!5379)))

(declare-fun b!209379 () Bool)

(declare-fun res!102079 () Bool)

(assert (=> b!209379 (=> (not res!102079) (not e!136419))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209379 (= res!102079 (validKeyInArray!0 k0!843))))

(declare-fun b!209380 () Bool)

(declare-fun res!102081 () Bool)

(assert (=> b!209380 (=> (not res!102081) (not e!136419))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209380 (= res!102081 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5052 _keys!825))))))

(declare-fun b!209381 () Bool)

(assert (=> b!209381 (= e!136419 (not (bvslt i!601 (size!5053 _values!649))))))

(declare-datatypes ((tuple2!4128 0))(
  ( (tuple2!4129 (_1!2074 (_ BitVec 64)) (_2!2074 V!6819)) )
))
(declare-datatypes ((List!3047 0))(
  ( (Nil!3044) (Cons!3043 (h!3685 tuple2!4128) (t!7986 List!3047)) )
))
(declare-datatypes ((ListLongMap!3055 0))(
  ( (ListLongMap!3056 (toList!1543 List!3047)) )
))
(declare-fun lt!107033 () ListLongMap!3055)

(declare-fun lt!107035 () ListLongMap!3055)

(assert (=> b!209381 (and (= lt!107033 lt!107035) (= lt!107035 lt!107033))))

(declare-fun lt!107034 () ListLongMap!3055)

(declare-fun v!520 () V!6819)

(declare-fun +!536 (ListLongMap!3055 tuple2!4128) ListLongMap!3055)

(assert (=> b!209381 (= lt!107035 (+!536 lt!107034 (tuple2!4129 k0!843 v!520)))))

(declare-datatypes ((Unit!6367 0))(
  ( (Unit!6368) )
))
(declare-fun lt!107032 () Unit!6367)

(declare-fun zeroValue!615 () V!6819)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6819)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!194 (array!9954 array!9956 (_ BitVec 32) (_ BitVec 32) V!6819 V!6819 (_ BitVec 32) (_ BitVec 64) V!6819 (_ BitVec 32) Int) Unit!6367)

(assert (=> b!209381 (= lt!107032 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!194 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!476 (array!9954 array!9956 (_ BitVec 32) (_ BitVec 32) V!6819 V!6819 (_ BitVec 32) Int) ListLongMap!3055)

(assert (=> b!209381 (= lt!107033 (getCurrentListMapNoExtraKeys!476 _keys!825 (array!9957 (store (arr!4728 _values!649) i!601 (ValueCellFull!2346 v!520)) (size!5053 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!209381 (= lt!107034 (getCurrentListMapNoExtraKeys!476 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!102077 () Bool)

(assert (=> start!20876 (=> (not res!102077) (not e!136419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20876 (= res!102077 (validMask!0 mask!1149))))

(assert (=> start!20876 e!136419))

(declare-fun array_inv!3121 (array!9956) Bool)

(assert (=> start!20876 (and (array_inv!3121 _values!649) e!136417)))

(assert (=> start!20876 true))

(assert (=> start!20876 tp_is_empty!5379))

(declare-fun array_inv!3122 (array!9954) Bool)

(assert (=> start!20876 (array_inv!3122 _keys!825)))

(assert (=> start!20876 tp!19591))

(declare-fun mapIsEmpty!9137 () Bool)

(assert (=> mapIsEmpty!9137 mapRes!9137))

(declare-fun b!209382 () Bool)

(declare-fun res!102076 () Bool)

(assert (=> b!209382 (=> (not res!102076) (not e!136419))))

(assert (=> b!209382 (= res!102076 (= (select (arr!4727 _keys!825) i!601) k0!843))))

(declare-fun b!209383 () Bool)

(declare-fun e!136418 () Bool)

(assert (=> b!209383 (= e!136418 tp_is_empty!5379)))

(declare-fun b!209384 () Bool)

(declare-fun res!102080 () Bool)

(assert (=> b!209384 (=> (not res!102080) (not e!136419))))

(declare-datatypes ((List!3048 0))(
  ( (Nil!3045) (Cons!3044 (h!3686 (_ BitVec 64)) (t!7987 List!3048)) )
))
(declare-fun arrayNoDuplicates!0 (array!9954 (_ BitVec 32) List!3048) Bool)

(assert (=> b!209384 (= res!102080 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3045))))

(declare-fun b!209385 () Bool)

(declare-fun res!102078 () Bool)

(assert (=> b!209385 (=> (not res!102078) (not e!136419))))

(assert (=> b!209385 (= res!102078 (and (= (size!5053 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5052 _keys!825) (size!5053 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9137 () Bool)

(declare-fun tp!19592 () Bool)

(assert (=> mapNonEmpty!9137 (= mapRes!9137 (and tp!19592 e!136418))))

(declare-fun mapValue!9137 () ValueCell!2346)

(declare-fun mapRest!9137 () (Array (_ BitVec 32) ValueCell!2346))

(declare-fun mapKey!9137 () (_ BitVec 32))

(assert (=> mapNonEmpty!9137 (= (arr!4728 _values!649) (store mapRest!9137 mapKey!9137 mapValue!9137))))

(assert (= (and start!20876 res!102077) b!209385))

(assert (= (and b!209385 res!102078) b!209376))

(assert (= (and b!209376 res!102082) b!209384))

(assert (= (and b!209384 res!102080) b!209380))

(assert (= (and b!209380 res!102081) b!209379))

(assert (= (and b!209379 res!102079) b!209382))

(assert (= (and b!209382 res!102076) b!209381))

(assert (= (and b!209377 condMapEmpty!9137) mapIsEmpty!9137))

(assert (= (and b!209377 (not condMapEmpty!9137)) mapNonEmpty!9137))

(get-info :version)

(assert (= (and mapNonEmpty!9137 ((_ is ValueCellFull!2346) mapValue!9137)) b!209383))

(assert (= (and b!209377 ((_ is ValueCellFull!2346) mapDefault!9137)) b!209378))

(assert (= start!20876 b!209377))

(declare-fun m!236783 () Bool)

(assert (=> b!209379 m!236783))

(declare-fun m!236785 () Bool)

(assert (=> start!20876 m!236785))

(declare-fun m!236787 () Bool)

(assert (=> start!20876 m!236787))

(declare-fun m!236789 () Bool)

(assert (=> start!20876 m!236789))

(declare-fun m!236791 () Bool)

(assert (=> b!209381 m!236791))

(declare-fun m!236793 () Bool)

(assert (=> b!209381 m!236793))

(declare-fun m!236795 () Bool)

(assert (=> b!209381 m!236795))

(declare-fun m!236797 () Bool)

(assert (=> b!209381 m!236797))

(declare-fun m!236799 () Bool)

(assert (=> b!209381 m!236799))

(declare-fun m!236801 () Bool)

(assert (=> b!209382 m!236801))

(declare-fun m!236803 () Bool)

(assert (=> mapNonEmpty!9137 m!236803))

(declare-fun m!236805 () Bool)

(assert (=> b!209376 m!236805))

(declare-fun m!236807 () Bool)

(assert (=> b!209384 m!236807))

(check-sat (not start!20876) (not b!209384) tp_is_empty!5379 (not b_next!5517) (not b!209379) (not b!209376) (not b!209381) b_and!12281 (not mapNonEmpty!9137))
(check-sat b_and!12281 (not b_next!5517))
