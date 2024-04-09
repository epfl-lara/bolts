; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39686 () Bool)

(assert start!39686)

(declare-fun b_free!9945 () Bool)

(declare-fun b_next!9945 () Bool)

(assert (=> start!39686 (= b_free!9945 (not b_next!9945))))

(declare-fun tp!35363 () Bool)

(declare-fun b_and!17619 () Bool)

(assert (=> start!39686 (= tp!35363 b_and!17619)))

(declare-fun b!425900 () Bool)

(declare-fun res!249585 () Bool)

(declare-fun e!252747 () Bool)

(assert (=> b!425900 (=> (not res!249585) (not e!252747))))

(declare-datatypes ((array!26019 0))(
  ( (array!26020 (arr!12456 (Array (_ BitVec 32) (_ BitVec 64))) (size!12808 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26019)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26019 (_ BitVec 32)) Bool)

(assert (=> b!425900 (= res!249585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425901 () Bool)

(declare-fun res!249579 () Bool)

(declare-fun e!252744 () Bool)

(assert (=> b!425901 (=> (not res!249579) (not e!252744))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425901 (= res!249579 (bvsle from!863 i!563))))

(declare-fun b!425902 () Bool)

(declare-fun res!249574 () Bool)

(assert (=> b!425902 (=> (not res!249574) (not e!252747))))

(declare-datatypes ((List!7335 0))(
  ( (Nil!7332) (Cons!7331 (h!8187 (_ BitVec 64)) (t!12787 List!7335)) )
))
(declare-fun arrayNoDuplicates!0 (array!26019 (_ BitVec 32) List!7335) Bool)

(assert (=> b!425902 (= res!249574 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7332))))

(declare-fun b!425903 () Bool)

(declare-fun e!252745 () Bool)

(declare-fun tp_is_empty!11097 () Bool)

(assert (=> b!425903 (= e!252745 tp_is_empty!11097)))

(declare-fun mapIsEmpty!18267 () Bool)

(declare-fun mapRes!18267 () Bool)

(assert (=> mapIsEmpty!18267 mapRes!18267))

(declare-fun b!425904 () Bool)

(declare-fun res!249584 () Bool)

(assert (=> b!425904 (=> (not res!249584) (not e!252747))))

(assert (=> b!425904 (= res!249584 (or (= (select (arr!12456 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12456 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425905 () Bool)

(declare-fun e!252748 () Bool)

(assert (=> b!425905 (= e!252744 e!252748)))

(declare-fun res!249573 () Bool)

(assert (=> b!425905 (=> (not res!249573) (not e!252748))))

(assert (=> b!425905 (= res!249573 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15901 0))(
  ( (V!15902 (val!5593 Int)) )
))
(declare-fun minValue!515 () V!15901)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7290 0))(
  ( (tuple2!7291 (_1!3655 (_ BitVec 64)) (_2!3655 V!15901)) )
))
(declare-datatypes ((List!7336 0))(
  ( (Nil!7333) (Cons!7332 (h!8188 tuple2!7290) (t!12788 List!7336)) )
))
(declare-datatypes ((ListLongMap!6217 0))(
  ( (ListLongMap!6218 (toList!3124 List!7336)) )
))
(declare-fun lt!194820 () ListLongMap!6217)

(declare-fun zeroValue!515 () V!15901)

(declare-fun lt!194817 () array!26019)

(declare-datatypes ((ValueCell!5205 0))(
  ( (ValueCellFull!5205 (v!7836 V!15901)) (EmptyCell!5205) )
))
(declare-datatypes ((array!26021 0))(
  ( (array!26022 (arr!12457 (Array (_ BitVec 32) ValueCell!5205)) (size!12809 (_ BitVec 32))) )
))
(declare-fun lt!194819 () array!26021)

(declare-fun getCurrentListMapNoExtraKeys!1325 (array!26019 array!26021 (_ BitVec 32) (_ BitVec 32) V!15901 V!15901 (_ BitVec 32) Int) ListLongMap!6217)

(assert (=> b!425905 (= lt!194820 (getCurrentListMapNoExtraKeys!1325 lt!194817 lt!194819 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26021)

(declare-fun v!412 () V!15901)

(assert (=> b!425905 (= lt!194819 (array!26022 (store (arr!12457 _values!549) i!563 (ValueCellFull!5205 v!412)) (size!12809 _values!549)))))

(declare-fun lt!194816 () ListLongMap!6217)

(assert (=> b!425905 (= lt!194816 (getCurrentListMapNoExtraKeys!1325 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425906 () Bool)

(declare-fun e!252743 () Bool)

(assert (=> b!425906 (= e!252743 tp_is_empty!11097)))

(declare-fun b!425907 () Bool)

(declare-fun res!249582 () Bool)

(assert (=> b!425907 (=> (not res!249582) (not e!252744))))

(assert (=> b!425907 (= res!249582 (arrayNoDuplicates!0 lt!194817 #b00000000000000000000000000000000 Nil!7332))))

(declare-fun res!249583 () Bool)

(assert (=> start!39686 (=> (not res!249583) (not e!252747))))

(assert (=> start!39686 (= res!249583 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12808 _keys!709))))))

(assert (=> start!39686 e!252747))

(assert (=> start!39686 tp_is_empty!11097))

(assert (=> start!39686 tp!35363))

(assert (=> start!39686 true))

(declare-fun e!252746 () Bool)

(declare-fun array_inv!9078 (array!26021) Bool)

(assert (=> start!39686 (and (array_inv!9078 _values!549) e!252746)))

(declare-fun array_inv!9079 (array!26019) Bool)

(assert (=> start!39686 (array_inv!9079 _keys!709)))

(declare-fun b!425908 () Bool)

(declare-fun res!249575 () Bool)

(assert (=> b!425908 (=> (not res!249575) (not e!252747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425908 (= res!249575 (validMask!0 mask!1025))))

(declare-fun b!425909 () Bool)

(declare-fun res!249577 () Bool)

(assert (=> b!425909 (=> (not res!249577) (not e!252747))))

(assert (=> b!425909 (= res!249577 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12808 _keys!709))))))

(declare-fun mapNonEmpty!18267 () Bool)

(declare-fun tp!35364 () Bool)

(assert (=> mapNonEmpty!18267 (= mapRes!18267 (and tp!35364 e!252745))))

(declare-fun mapValue!18267 () ValueCell!5205)

(declare-fun mapRest!18267 () (Array (_ BitVec 32) ValueCell!5205))

(declare-fun mapKey!18267 () (_ BitVec 32))

(assert (=> mapNonEmpty!18267 (= (arr!12457 _values!549) (store mapRest!18267 mapKey!18267 mapValue!18267))))

(declare-fun b!425910 () Bool)

(declare-fun res!249580 () Bool)

(assert (=> b!425910 (=> (not res!249580) (not e!252747))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425910 (= res!249580 (validKeyInArray!0 k0!794))))

(declare-fun b!425911 () Bool)

(assert (=> b!425911 (= e!252748 (not true))))

(declare-fun +!1281 (ListLongMap!6217 tuple2!7290) ListLongMap!6217)

(assert (=> b!425911 (= (getCurrentListMapNoExtraKeys!1325 lt!194817 lt!194819 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1281 (getCurrentListMapNoExtraKeys!1325 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7291 k0!794 v!412)))))

(declare-datatypes ((Unit!12465 0))(
  ( (Unit!12466) )
))
(declare-fun lt!194818 () Unit!12465)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!483 (array!26019 array!26021 (_ BitVec 32) (_ BitVec 32) V!15901 V!15901 (_ BitVec 32) (_ BitVec 64) V!15901 (_ BitVec 32) Int) Unit!12465)

(assert (=> b!425911 (= lt!194818 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!483 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!425912 () Bool)

(declare-fun res!249581 () Bool)

(assert (=> b!425912 (=> (not res!249581) (not e!252747))))

(declare-fun arrayContainsKey!0 (array!26019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425912 (= res!249581 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!425913 () Bool)

(declare-fun res!249576 () Bool)

(assert (=> b!425913 (=> (not res!249576) (not e!252747))))

(assert (=> b!425913 (= res!249576 (and (= (size!12809 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12808 _keys!709) (size!12809 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425914 () Bool)

(assert (=> b!425914 (= e!252747 e!252744)))

(declare-fun res!249578 () Bool)

(assert (=> b!425914 (=> (not res!249578) (not e!252744))))

(assert (=> b!425914 (= res!249578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194817 mask!1025))))

(assert (=> b!425914 (= lt!194817 (array!26020 (store (arr!12456 _keys!709) i!563 k0!794) (size!12808 _keys!709)))))

(declare-fun b!425915 () Bool)

(assert (=> b!425915 (= e!252746 (and e!252743 mapRes!18267))))

(declare-fun condMapEmpty!18267 () Bool)

(declare-fun mapDefault!18267 () ValueCell!5205)

(assert (=> b!425915 (= condMapEmpty!18267 (= (arr!12457 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5205)) mapDefault!18267)))))

(assert (= (and start!39686 res!249583) b!425908))

(assert (= (and b!425908 res!249575) b!425913))

(assert (= (and b!425913 res!249576) b!425900))

(assert (= (and b!425900 res!249585) b!425902))

(assert (= (and b!425902 res!249574) b!425909))

(assert (= (and b!425909 res!249577) b!425910))

(assert (= (and b!425910 res!249580) b!425904))

(assert (= (and b!425904 res!249584) b!425912))

(assert (= (and b!425912 res!249581) b!425914))

(assert (= (and b!425914 res!249578) b!425907))

(assert (= (and b!425907 res!249582) b!425901))

(assert (= (and b!425901 res!249579) b!425905))

(assert (= (and b!425905 res!249573) b!425911))

(assert (= (and b!425915 condMapEmpty!18267) mapIsEmpty!18267))

(assert (= (and b!425915 (not condMapEmpty!18267)) mapNonEmpty!18267))

(get-info :version)

(assert (= (and mapNonEmpty!18267 ((_ is ValueCellFull!5205) mapValue!18267)) b!425903))

(assert (= (and b!425915 ((_ is ValueCellFull!5205) mapDefault!18267)) b!425906))

(assert (= start!39686 b!425915))

(declare-fun m!414699 () Bool)

(assert (=> b!425910 m!414699))

(declare-fun m!414701 () Bool)

(assert (=> b!425911 m!414701))

(declare-fun m!414703 () Bool)

(assert (=> b!425911 m!414703))

(assert (=> b!425911 m!414703))

(declare-fun m!414705 () Bool)

(assert (=> b!425911 m!414705))

(declare-fun m!414707 () Bool)

(assert (=> b!425911 m!414707))

(declare-fun m!414709 () Bool)

(assert (=> mapNonEmpty!18267 m!414709))

(declare-fun m!414711 () Bool)

(assert (=> b!425907 m!414711))

(declare-fun m!414713 () Bool)

(assert (=> b!425908 m!414713))

(declare-fun m!414715 () Bool)

(assert (=> start!39686 m!414715))

(declare-fun m!414717 () Bool)

(assert (=> start!39686 m!414717))

(declare-fun m!414719 () Bool)

(assert (=> b!425914 m!414719))

(declare-fun m!414721 () Bool)

(assert (=> b!425914 m!414721))

(declare-fun m!414723 () Bool)

(assert (=> b!425900 m!414723))

(declare-fun m!414725 () Bool)

(assert (=> b!425905 m!414725))

(declare-fun m!414727 () Bool)

(assert (=> b!425905 m!414727))

(declare-fun m!414729 () Bool)

(assert (=> b!425905 m!414729))

(declare-fun m!414731 () Bool)

(assert (=> b!425902 m!414731))

(declare-fun m!414733 () Bool)

(assert (=> b!425912 m!414733))

(declare-fun m!414735 () Bool)

(assert (=> b!425904 m!414735))

(check-sat (not b!425907) (not start!39686) (not b!425905) (not b!425910) tp_is_empty!11097 (not b!425902) (not b_next!9945) (not b!425911) (not b!425912) (not b!425908) (not b!425914) b_and!17619 (not mapNonEmpty!18267) (not b!425900))
(check-sat b_and!17619 (not b_next!9945))
