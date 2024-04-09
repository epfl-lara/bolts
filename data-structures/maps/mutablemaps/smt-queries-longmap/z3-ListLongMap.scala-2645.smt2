; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39698 () Bool)

(assert start!39698)

(declare-fun b_free!9957 () Bool)

(declare-fun b_next!9957 () Bool)

(assert (=> start!39698 (= b_free!9957 (not b_next!9957))))

(declare-fun tp!35399 () Bool)

(declare-fun b_and!17631 () Bool)

(assert (=> start!39698 (= tp!35399 b_and!17631)))

(declare-fun b!426188 () Bool)

(declare-fun res!249810 () Bool)

(declare-fun e!252868 () Bool)

(assert (=> b!426188 (=> (not res!249810) (not e!252868))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426188 (= res!249810 (bvsle from!863 i!563))))

(declare-fun res!249814 () Bool)

(declare-fun e!252871 () Bool)

(assert (=> start!39698 (=> (not res!249814) (not e!252871))))

(declare-datatypes ((array!26043 0))(
  ( (array!26044 (arr!12468 (Array (_ BitVec 32) (_ BitVec 64))) (size!12820 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26043)

(assert (=> start!39698 (= res!249814 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12820 _keys!709))))))

(assert (=> start!39698 e!252871))

(declare-fun tp_is_empty!11109 () Bool)

(assert (=> start!39698 tp_is_empty!11109))

(assert (=> start!39698 tp!35399))

(assert (=> start!39698 true))

(declare-datatypes ((V!15917 0))(
  ( (V!15918 (val!5599 Int)) )
))
(declare-datatypes ((ValueCell!5211 0))(
  ( (ValueCellFull!5211 (v!7842 V!15917)) (EmptyCell!5211) )
))
(declare-datatypes ((array!26045 0))(
  ( (array!26046 (arr!12469 (Array (_ BitVec 32) ValueCell!5211)) (size!12821 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26045)

(declare-fun e!252870 () Bool)

(declare-fun array_inv!9084 (array!26045) Bool)

(assert (=> start!39698 (and (array_inv!9084 _values!549) e!252870)))

(declare-fun array_inv!9085 (array!26043) Bool)

(assert (=> start!39698 (array_inv!9085 _keys!709)))

(declare-fun b!426189 () Bool)

(declare-fun e!252872 () Bool)

(assert (=> b!426189 (= e!252872 tp_is_empty!11109)))

(declare-fun b!426190 () Bool)

(declare-fun e!252869 () Bool)

(declare-fun mapRes!18285 () Bool)

(assert (=> b!426190 (= e!252870 (and e!252869 mapRes!18285))))

(declare-fun condMapEmpty!18285 () Bool)

(declare-fun mapDefault!18285 () ValueCell!5211)

(assert (=> b!426190 (= condMapEmpty!18285 (= (arr!12469 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5211)) mapDefault!18285)))))

(declare-fun b!426191 () Bool)

(declare-fun res!249809 () Bool)

(assert (=> b!426191 (=> (not res!249809) (not e!252871))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426191 (= res!249809 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!426192 () Bool)

(declare-fun res!249811 () Bool)

(assert (=> b!426192 (=> (not res!249811) (not e!252871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426192 (= res!249811 (validKeyInArray!0 k0!794))))

(declare-fun b!426193 () Bool)

(declare-fun res!249815 () Bool)

(assert (=> b!426193 (=> (not res!249815) (not e!252871))))

(assert (=> b!426193 (= res!249815 (or (= (select (arr!12468 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12468 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426194 () Bool)

(assert (=> b!426194 (= e!252871 e!252868)))

(declare-fun res!249818 () Bool)

(assert (=> b!426194 (=> (not res!249818) (not e!252868))))

(declare-fun lt!194908 () array!26043)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26043 (_ BitVec 32)) Bool)

(assert (=> b!426194 (= res!249818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194908 mask!1025))))

(assert (=> b!426194 (= lt!194908 (array!26044 (store (arr!12468 _keys!709) i!563 k0!794) (size!12820 _keys!709)))))

(declare-fun b!426195 () Bool)

(declare-fun res!249819 () Bool)

(assert (=> b!426195 (=> (not res!249819) (not e!252871))))

(declare-datatypes ((List!7344 0))(
  ( (Nil!7341) (Cons!7340 (h!8196 (_ BitVec 64)) (t!12796 List!7344)) )
))
(declare-fun arrayNoDuplicates!0 (array!26043 (_ BitVec 32) List!7344) Bool)

(assert (=> b!426195 (= res!249819 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7341))))

(declare-fun b!426196 () Bool)

(declare-fun res!249812 () Bool)

(assert (=> b!426196 (=> (not res!249812) (not e!252871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426196 (= res!249812 (validMask!0 mask!1025))))

(declare-fun b!426197 () Bool)

(assert (=> b!426197 (= e!252869 tp_is_empty!11109)))

(declare-fun mapNonEmpty!18285 () Bool)

(declare-fun tp!35400 () Bool)

(assert (=> mapNonEmpty!18285 (= mapRes!18285 (and tp!35400 e!252872))))

(declare-fun mapRest!18285 () (Array (_ BitVec 32) ValueCell!5211))

(declare-fun mapValue!18285 () ValueCell!5211)

(declare-fun mapKey!18285 () (_ BitVec 32))

(assert (=> mapNonEmpty!18285 (= (arr!12469 _values!549) (store mapRest!18285 mapKey!18285 mapValue!18285))))

(declare-fun b!426198 () Bool)

(declare-fun e!252874 () Bool)

(assert (=> b!426198 (= e!252874 (not true))))

(declare-fun minValue!515 () V!15917)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!194909 () array!26045)

(declare-fun zeroValue!515 () V!15917)

(declare-fun v!412 () V!15917)

(declare-datatypes ((tuple2!7296 0))(
  ( (tuple2!7297 (_1!3658 (_ BitVec 64)) (_2!3658 V!15917)) )
))
(declare-datatypes ((List!7345 0))(
  ( (Nil!7342) (Cons!7341 (h!8197 tuple2!7296) (t!12797 List!7345)) )
))
(declare-datatypes ((ListLongMap!6223 0))(
  ( (ListLongMap!6224 (toList!3127 List!7345)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1328 (array!26043 array!26045 (_ BitVec 32) (_ BitVec 32) V!15917 V!15917 (_ BitVec 32) Int) ListLongMap!6223)

(declare-fun +!1283 (ListLongMap!6223 tuple2!7296) ListLongMap!6223)

(assert (=> b!426198 (= (getCurrentListMapNoExtraKeys!1328 lt!194908 lt!194909 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1283 (getCurrentListMapNoExtraKeys!1328 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7297 k0!794 v!412)))))

(declare-datatypes ((Unit!12469 0))(
  ( (Unit!12470) )
))
(declare-fun lt!194910 () Unit!12469)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!485 (array!26043 array!26045 (_ BitVec 32) (_ BitVec 32) V!15917 V!15917 (_ BitVec 32) (_ BitVec 64) V!15917 (_ BitVec 32) Int) Unit!12469)

(assert (=> b!426198 (= lt!194910 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!485 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!426199 () Bool)

(declare-fun res!249807 () Bool)

(assert (=> b!426199 (=> (not res!249807) (not e!252871))))

(assert (=> b!426199 (= res!249807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!426200 () Bool)

(assert (=> b!426200 (= e!252868 e!252874)))

(declare-fun res!249816 () Bool)

(assert (=> b!426200 (=> (not res!249816) (not e!252874))))

(assert (=> b!426200 (= res!249816 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194906 () ListLongMap!6223)

(assert (=> b!426200 (= lt!194906 (getCurrentListMapNoExtraKeys!1328 lt!194908 lt!194909 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!426200 (= lt!194909 (array!26046 (store (arr!12469 _values!549) i!563 (ValueCellFull!5211 v!412)) (size!12821 _values!549)))))

(declare-fun lt!194907 () ListLongMap!6223)

(assert (=> b!426200 (= lt!194907 (getCurrentListMapNoExtraKeys!1328 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426201 () Bool)

(declare-fun res!249808 () Bool)

(assert (=> b!426201 (=> (not res!249808) (not e!252871))))

(assert (=> b!426201 (= res!249808 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12820 _keys!709))))))

(declare-fun mapIsEmpty!18285 () Bool)

(assert (=> mapIsEmpty!18285 mapRes!18285))

(declare-fun b!426202 () Bool)

(declare-fun res!249817 () Bool)

(assert (=> b!426202 (=> (not res!249817) (not e!252871))))

(assert (=> b!426202 (= res!249817 (and (= (size!12821 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12820 _keys!709) (size!12821 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426203 () Bool)

(declare-fun res!249813 () Bool)

(assert (=> b!426203 (=> (not res!249813) (not e!252868))))

(assert (=> b!426203 (= res!249813 (arrayNoDuplicates!0 lt!194908 #b00000000000000000000000000000000 Nil!7341))))

(assert (= (and start!39698 res!249814) b!426196))

(assert (= (and b!426196 res!249812) b!426202))

(assert (= (and b!426202 res!249817) b!426199))

(assert (= (and b!426199 res!249807) b!426195))

(assert (= (and b!426195 res!249819) b!426201))

(assert (= (and b!426201 res!249808) b!426192))

(assert (= (and b!426192 res!249811) b!426193))

(assert (= (and b!426193 res!249815) b!426191))

(assert (= (and b!426191 res!249809) b!426194))

(assert (= (and b!426194 res!249818) b!426203))

(assert (= (and b!426203 res!249813) b!426188))

(assert (= (and b!426188 res!249810) b!426200))

(assert (= (and b!426200 res!249816) b!426198))

(assert (= (and b!426190 condMapEmpty!18285) mapIsEmpty!18285))

(assert (= (and b!426190 (not condMapEmpty!18285)) mapNonEmpty!18285))

(get-info :version)

(assert (= (and mapNonEmpty!18285 ((_ is ValueCellFull!5211) mapValue!18285)) b!426189))

(assert (= (and b!426190 ((_ is ValueCellFull!5211) mapDefault!18285)) b!426197))

(assert (= start!39698 b!426190))

(declare-fun m!414927 () Bool)

(assert (=> b!426196 m!414927))

(declare-fun m!414929 () Bool)

(assert (=> mapNonEmpty!18285 m!414929))

(declare-fun m!414931 () Bool)

(assert (=> b!426198 m!414931))

(declare-fun m!414933 () Bool)

(assert (=> b!426198 m!414933))

(assert (=> b!426198 m!414933))

(declare-fun m!414935 () Bool)

(assert (=> b!426198 m!414935))

(declare-fun m!414937 () Bool)

(assert (=> b!426198 m!414937))

(declare-fun m!414939 () Bool)

(assert (=> b!426191 m!414939))

(declare-fun m!414941 () Bool)

(assert (=> b!426199 m!414941))

(declare-fun m!414943 () Bool)

(assert (=> b!426203 m!414943))

(declare-fun m!414945 () Bool)

(assert (=> b!426192 m!414945))

(declare-fun m!414947 () Bool)

(assert (=> start!39698 m!414947))

(declare-fun m!414949 () Bool)

(assert (=> start!39698 m!414949))

(declare-fun m!414951 () Bool)

(assert (=> b!426200 m!414951))

(declare-fun m!414953 () Bool)

(assert (=> b!426200 m!414953))

(declare-fun m!414955 () Bool)

(assert (=> b!426200 m!414955))

(declare-fun m!414957 () Bool)

(assert (=> b!426193 m!414957))

(declare-fun m!414959 () Bool)

(assert (=> b!426195 m!414959))

(declare-fun m!414961 () Bool)

(assert (=> b!426194 m!414961))

(declare-fun m!414963 () Bool)

(assert (=> b!426194 m!414963))

(check-sat (not b!426200) b_and!17631 (not b!426203) tp_is_empty!11109 (not b!426191) (not b!426194) (not mapNonEmpty!18285) (not b!426195) (not b!426192) (not b_next!9957) (not start!39698) (not b!426198) (not b!426199) (not b!426196))
(check-sat b_and!17631 (not b_next!9957))
