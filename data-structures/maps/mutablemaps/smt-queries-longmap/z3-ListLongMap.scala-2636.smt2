; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39644 () Bool)

(assert start!39644)

(declare-fun b_free!9903 () Bool)

(declare-fun b_next!9903 () Bool)

(assert (=> start!39644 (= b_free!9903 (not b_next!9903))))

(declare-fun tp!35238 () Bool)

(declare-fun b_and!17577 () Bool)

(assert (=> start!39644 (= tp!35238 b_and!17577)))

(declare-fun b!424892 () Bool)

(declare-fun res!248762 () Bool)

(declare-fun e!252305 () Bool)

(assert (=> b!424892 (=> (not res!248762) (not e!252305))))

(declare-datatypes ((array!25937 0))(
  ( (array!25938 (arr!12415 (Array (_ BitVec 32) (_ BitVec 64))) (size!12767 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25937)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424892 (= res!248762 (or (= (select (arr!12415 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12415 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424893 () Bool)

(declare-fun res!248759 () Bool)

(declare-fun e!252304 () Bool)

(assert (=> b!424893 (=> (not res!248759) (not e!252304))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!424893 (= res!248759 (bvsle from!863 i!563))))

(declare-fun b!424894 () Bool)

(declare-fun e!252302 () Bool)

(declare-fun tp_is_empty!11055 () Bool)

(assert (=> b!424894 (= e!252302 tp_is_empty!11055)))

(declare-fun b!424895 () Bool)

(declare-fun res!248757 () Bool)

(assert (=> b!424895 (=> (not res!248757) (not e!252305))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424895 (= res!248757 (validKeyInArray!0 k0!794))))

(declare-fun b!424896 () Bool)

(declare-fun res!248756 () Bool)

(assert (=> b!424896 (=> (not res!248756) (not e!252305))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15845 0))(
  ( (V!15846 (val!5572 Int)) )
))
(declare-datatypes ((ValueCell!5184 0))(
  ( (ValueCellFull!5184 (v!7815 V!15845)) (EmptyCell!5184) )
))
(declare-datatypes ((array!25939 0))(
  ( (array!25940 (arr!12416 (Array (_ BitVec 32) ValueCell!5184)) (size!12768 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25939)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!424896 (= res!248756 (and (= (size!12768 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12767 _keys!709) (size!12768 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424897 () Bool)

(assert (=> b!424897 (= e!252305 e!252304)))

(declare-fun res!248760 () Bool)

(assert (=> b!424897 (=> (not res!248760) (not e!252304))))

(declare-fun lt!194502 () array!25937)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25937 (_ BitVec 32)) Bool)

(assert (=> b!424897 (= res!248760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194502 mask!1025))))

(assert (=> b!424897 (= lt!194502 (array!25938 (store (arr!12415 _keys!709) i!563 k0!794) (size!12767 _keys!709)))))

(declare-fun mapIsEmpty!18204 () Bool)

(declare-fun mapRes!18204 () Bool)

(assert (=> mapIsEmpty!18204 mapRes!18204))

(declare-fun mapNonEmpty!18204 () Bool)

(declare-fun tp!35237 () Bool)

(declare-fun e!252301 () Bool)

(assert (=> mapNonEmpty!18204 (= mapRes!18204 (and tp!35237 e!252301))))

(declare-fun mapRest!18204 () (Array (_ BitVec 32) ValueCell!5184))

(declare-fun mapKey!18204 () (_ BitVec 32))

(declare-fun mapValue!18204 () ValueCell!5184)

(assert (=> mapNonEmpty!18204 (= (arr!12416 _values!549) (store mapRest!18204 mapKey!18204 mapValue!18204))))

(declare-fun b!424898 () Bool)

(declare-fun e!252307 () Bool)

(assert (=> b!424898 (= e!252307 (not true))))

(declare-fun lt!194505 () array!25939)

(declare-fun minValue!515 () V!15845)

(declare-fun defaultEntry!557 () Int)

(declare-fun v!412 () V!15845)

(declare-fun zeroValue!515 () V!15845)

(declare-datatypes ((tuple2!7256 0))(
  ( (tuple2!7257 (_1!3638 (_ BitVec 64)) (_2!3638 V!15845)) )
))
(declare-datatypes ((List!7300 0))(
  ( (Nil!7297) (Cons!7296 (h!8152 tuple2!7256) (t!12752 List!7300)) )
))
(declare-datatypes ((ListLongMap!6183 0))(
  ( (ListLongMap!6184 (toList!3107 List!7300)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1308 (array!25937 array!25939 (_ BitVec 32) (_ BitVec 32) V!15845 V!15845 (_ BitVec 32) Int) ListLongMap!6183)

(declare-fun +!1268 (ListLongMap!6183 tuple2!7256) ListLongMap!6183)

(assert (=> b!424898 (= (getCurrentListMapNoExtraKeys!1308 lt!194502 lt!194505 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1268 (getCurrentListMapNoExtraKeys!1308 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7257 k0!794 v!412)))))

(declare-datatypes ((Unit!12439 0))(
  ( (Unit!12440) )
))
(declare-fun lt!194503 () Unit!12439)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!470 (array!25937 array!25939 (_ BitVec 32) (_ BitVec 32) V!15845 V!15845 (_ BitVec 32) (_ BitVec 64) V!15845 (_ BitVec 32) Int) Unit!12439)

(assert (=> b!424898 (= lt!194503 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!470 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!424899 () Bool)

(assert (=> b!424899 (= e!252301 tp_is_empty!11055)))

(declare-fun b!424900 () Bool)

(declare-fun res!248758 () Bool)

(assert (=> b!424900 (=> (not res!248758) (not e!252305))))

(declare-datatypes ((List!7301 0))(
  ( (Nil!7298) (Cons!7297 (h!8153 (_ BitVec 64)) (t!12753 List!7301)) )
))
(declare-fun arrayNoDuplicates!0 (array!25937 (_ BitVec 32) List!7301) Bool)

(assert (=> b!424900 (= res!248758 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7298))))

(declare-fun b!424901 () Bool)

(declare-fun res!248766 () Bool)

(assert (=> b!424901 (=> (not res!248766) (not e!252305))))

(assert (=> b!424901 (= res!248766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424902 () Bool)

(declare-fun res!248761 () Bool)

(assert (=> b!424902 (=> (not res!248761) (not e!252305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424902 (= res!248761 (validMask!0 mask!1025))))

(declare-fun b!424903 () Bool)

(declare-fun res!248763 () Bool)

(assert (=> b!424903 (=> (not res!248763) (not e!252304))))

(assert (=> b!424903 (= res!248763 (arrayNoDuplicates!0 lt!194502 #b00000000000000000000000000000000 Nil!7298))))

(declare-fun b!424904 () Bool)

(declare-fun e!252306 () Bool)

(assert (=> b!424904 (= e!252306 (and e!252302 mapRes!18204))))

(declare-fun condMapEmpty!18204 () Bool)

(declare-fun mapDefault!18204 () ValueCell!5184)

(assert (=> b!424904 (= condMapEmpty!18204 (= (arr!12416 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5184)) mapDefault!18204)))))

(declare-fun res!248754 () Bool)

(assert (=> start!39644 (=> (not res!248754) (not e!252305))))

(assert (=> start!39644 (= res!248754 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12767 _keys!709))))))

(assert (=> start!39644 e!252305))

(assert (=> start!39644 tp_is_empty!11055))

(assert (=> start!39644 tp!35238))

(assert (=> start!39644 true))

(declare-fun array_inv!9052 (array!25939) Bool)

(assert (=> start!39644 (and (array_inv!9052 _values!549) e!252306)))

(declare-fun array_inv!9053 (array!25937) Bool)

(assert (=> start!39644 (array_inv!9053 _keys!709)))

(declare-fun b!424905 () Bool)

(declare-fun res!248755 () Bool)

(assert (=> b!424905 (=> (not res!248755) (not e!252305))))

(declare-fun arrayContainsKey!0 (array!25937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424905 (= res!248755 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!424906 () Bool)

(declare-fun res!248764 () Bool)

(assert (=> b!424906 (=> (not res!248764) (not e!252305))))

(assert (=> b!424906 (= res!248764 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12767 _keys!709))))))

(declare-fun b!424907 () Bool)

(assert (=> b!424907 (= e!252304 e!252307)))

(declare-fun res!248765 () Bool)

(assert (=> b!424907 (=> (not res!248765) (not e!252307))))

(assert (=> b!424907 (= res!248765 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194504 () ListLongMap!6183)

(assert (=> b!424907 (= lt!194504 (getCurrentListMapNoExtraKeys!1308 lt!194502 lt!194505 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!424907 (= lt!194505 (array!25940 (store (arr!12416 _values!549) i!563 (ValueCellFull!5184 v!412)) (size!12768 _values!549)))))

(declare-fun lt!194501 () ListLongMap!6183)

(assert (=> b!424907 (= lt!194501 (getCurrentListMapNoExtraKeys!1308 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39644 res!248754) b!424902))

(assert (= (and b!424902 res!248761) b!424896))

(assert (= (and b!424896 res!248756) b!424901))

(assert (= (and b!424901 res!248766) b!424900))

(assert (= (and b!424900 res!248758) b!424906))

(assert (= (and b!424906 res!248764) b!424895))

(assert (= (and b!424895 res!248757) b!424892))

(assert (= (and b!424892 res!248762) b!424905))

(assert (= (and b!424905 res!248755) b!424897))

(assert (= (and b!424897 res!248760) b!424903))

(assert (= (and b!424903 res!248763) b!424893))

(assert (= (and b!424893 res!248759) b!424907))

(assert (= (and b!424907 res!248765) b!424898))

(assert (= (and b!424904 condMapEmpty!18204) mapIsEmpty!18204))

(assert (= (and b!424904 (not condMapEmpty!18204)) mapNonEmpty!18204))

(get-info :version)

(assert (= (and mapNonEmpty!18204 ((_ is ValueCellFull!5184) mapValue!18204)) b!424899))

(assert (= (and b!424904 ((_ is ValueCellFull!5184) mapDefault!18204)) b!424894))

(assert (= start!39644 b!424904))

(declare-fun m!413901 () Bool)

(assert (=> b!424901 m!413901))

(declare-fun m!413903 () Bool)

(assert (=> b!424895 m!413903))

(declare-fun m!413905 () Bool)

(assert (=> b!424903 m!413905))

(declare-fun m!413907 () Bool)

(assert (=> b!424898 m!413907))

(declare-fun m!413909 () Bool)

(assert (=> b!424898 m!413909))

(assert (=> b!424898 m!413909))

(declare-fun m!413911 () Bool)

(assert (=> b!424898 m!413911))

(declare-fun m!413913 () Bool)

(assert (=> b!424898 m!413913))

(declare-fun m!413915 () Bool)

(assert (=> b!424900 m!413915))

(declare-fun m!413917 () Bool)

(assert (=> start!39644 m!413917))

(declare-fun m!413919 () Bool)

(assert (=> start!39644 m!413919))

(declare-fun m!413921 () Bool)

(assert (=> mapNonEmpty!18204 m!413921))

(declare-fun m!413923 () Bool)

(assert (=> b!424897 m!413923))

(declare-fun m!413925 () Bool)

(assert (=> b!424897 m!413925))

(declare-fun m!413927 () Bool)

(assert (=> b!424907 m!413927))

(declare-fun m!413929 () Bool)

(assert (=> b!424907 m!413929))

(declare-fun m!413931 () Bool)

(assert (=> b!424907 m!413931))

(declare-fun m!413933 () Bool)

(assert (=> b!424905 m!413933))

(declare-fun m!413935 () Bool)

(assert (=> b!424902 m!413935))

(declare-fun m!413937 () Bool)

(assert (=> b!424892 m!413937))

(check-sat (not b!424895) (not b!424900) (not b!424902) (not start!39644) (not b!424905) b_and!17577 (not b!424897) (not b!424903) (not b!424898) (not b_next!9903) (not b!424907) tp_is_empty!11055 (not mapNonEmpty!18204) (not b!424901))
(check-sat b_and!17577 (not b_next!9903))
