; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39614 () Bool)

(assert start!39614)

(declare-fun b_free!9873 () Bool)

(declare-fun b_next!9873 () Bool)

(assert (=> start!39614 (= b_free!9873 (not b_next!9873))))

(declare-fun tp!35148 () Bool)

(declare-fun b_and!17547 () Bool)

(assert (=> start!39614 (= tp!35148 b_and!17547)))

(declare-fun mapNonEmpty!18159 () Bool)

(declare-fun mapRes!18159 () Bool)

(declare-fun tp!35147 () Bool)

(declare-fun e!252008 () Bool)

(assert (=> mapNonEmpty!18159 (= mapRes!18159 (and tp!35147 e!252008))))

(declare-datatypes ((V!15805 0))(
  ( (V!15806 (val!5557 Int)) )
))
(declare-datatypes ((ValueCell!5169 0))(
  ( (ValueCellFull!5169 (v!7800 V!15805)) (EmptyCell!5169) )
))
(declare-fun mapValue!18159 () ValueCell!5169)

(declare-datatypes ((array!25877 0))(
  ( (array!25878 (arr!12385 (Array (_ BitVec 32) ValueCell!5169)) (size!12737 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25877)

(declare-fun mapRest!18159 () (Array (_ BitVec 32) ValueCell!5169))

(declare-fun mapKey!18159 () (_ BitVec 32))

(assert (=> mapNonEmpty!18159 (= (arr!12385 _values!549) (store mapRest!18159 mapKey!18159 mapValue!18159))))

(declare-fun b!424194 () Bool)

(declare-fun e!252009 () Bool)

(declare-fun tp_is_empty!11025 () Bool)

(assert (=> b!424194 (= e!252009 tp_is_empty!11025)))

(declare-fun b!424195 () Bool)

(declare-fun res!248194 () Bool)

(declare-fun e!252013 () Bool)

(assert (=> b!424195 (=> (not res!248194) (not e!252013))))

(declare-datatypes ((array!25879 0))(
  ( (array!25880 (arr!12386 (Array (_ BitVec 32) (_ BitVec 64))) (size!12738 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25879)

(declare-datatypes ((List!7275 0))(
  ( (Nil!7272) (Cons!7271 (h!8127 (_ BitVec 64)) (t!12727 List!7275)) )
))
(declare-fun arrayNoDuplicates!0 (array!25879 (_ BitVec 32) List!7275) Bool)

(assert (=> b!424195 (= res!248194 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7272))))

(declare-fun b!424196 () Bool)

(declare-fun res!248196 () Bool)

(assert (=> b!424196 (=> (not res!248196) (not e!252013))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424196 (= res!248196 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!424197 () Bool)

(declare-fun e!252010 () Bool)

(assert (=> b!424197 (= e!252013 e!252010)))

(declare-fun res!248192 () Bool)

(assert (=> b!424197 (=> (not res!248192) (not e!252010))))

(declare-fun lt!194320 () array!25879)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25879 (_ BitVec 32)) Bool)

(assert (=> b!424197 (= res!248192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194320 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424197 (= lt!194320 (array!25880 (store (arr!12386 _keys!709) i!563 k0!794) (size!12738 _keys!709)))))

(declare-fun b!424198 () Bool)

(declare-fun e!252011 () Bool)

(assert (=> b!424198 (= e!252011 (and e!252009 mapRes!18159))))

(declare-fun condMapEmpty!18159 () Bool)

(declare-fun mapDefault!18159 () ValueCell!5169)

(assert (=> b!424198 (= condMapEmpty!18159 (= (arr!12385 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5169)) mapDefault!18159)))))

(declare-fun b!424199 () Bool)

(declare-fun res!248197 () Bool)

(assert (=> b!424199 (=> (not res!248197) (not e!252013))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!424199 (= res!248197 (and (= (size!12737 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12738 _keys!709) (size!12737 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424200 () Bool)

(assert (=> b!424200 (= e!252008 tp_is_empty!11025)))

(declare-fun b!424201 () Bool)

(declare-fun res!248191 () Bool)

(assert (=> b!424201 (=> (not res!248191) (not e!252013))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424201 (= res!248191 (validKeyInArray!0 k0!794))))

(declare-fun b!424203 () Bool)

(declare-fun res!248193 () Bool)

(assert (=> b!424203 (=> (not res!248193) (not e!252013))))

(assert (=> b!424203 (= res!248193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424204 () Bool)

(assert (=> b!424204 (= e!252010 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15805)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15805)

(declare-datatypes ((tuple2!7228 0))(
  ( (tuple2!7229 (_1!3624 (_ BitVec 64)) (_2!3624 V!15805)) )
))
(declare-datatypes ((List!7276 0))(
  ( (Nil!7273) (Cons!7272 (h!8128 tuple2!7228) (t!12728 List!7276)) )
))
(declare-datatypes ((ListLongMap!6155 0))(
  ( (ListLongMap!6156 (toList!3093 List!7276)) )
))
(declare-fun lt!194322 () ListLongMap!6155)

(declare-fun v!412 () V!15805)

(declare-fun getCurrentListMapNoExtraKeys!1294 (array!25879 array!25877 (_ BitVec 32) (_ BitVec 32) V!15805 V!15805 (_ BitVec 32) Int) ListLongMap!6155)

(assert (=> b!424204 (= lt!194322 (getCurrentListMapNoExtraKeys!1294 lt!194320 (array!25878 (store (arr!12385 _values!549) i!563 (ValueCellFull!5169 v!412)) (size!12737 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194321 () ListLongMap!6155)

(assert (=> b!424204 (= lt!194321 (getCurrentListMapNoExtraKeys!1294 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424205 () Bool)

(declare-fun res!248195 () Bool)

(assert (=> b!424205 (=> (not res!248195) (not e!252013))))

(assert (=> b!424205 (= res!248195 (or (= (select (arr!12386 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12386 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424206 () Bool)

(declare-fun res!248201 () Bool)

(assert (=> b!424206 (=> (not res!248201) (not e!252013))))

(assert (=> b!424206 (= res!248201 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12738 _keys!709))))))

(declare-fun b!424207 () Bool)

(declare-fun res!248202 () Bool)

(assert (=> b!424207 (=> (not res!248202) (not e!252013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424207 (= res!248202 (validMask!0 mask!1025))))

(declare-fun b!424208 () Bool)

(declare-fun res!248200 () Bool)

(assert (=> b!424208 (=> (not res!248200) (not e!252010))))

(assert (=> b!424208 (= res!248200 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18159 () Bool)

(assert (=> mapIsEmpty!18159 mapRes!18159))

(declare-fun res!248199 () Bool)

(assert (=> start!39614 (=> (not res!248199) (not e!252013))))

(assert (=> start!39614 (= res!248199 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12738 _keys!709))))))

(assert (=> start!39614 e!252013))

(assert (=> start!39614 tp_is_empty!11025))

(assert (=> start!39614 tp!35148))

(assert (=> start!39614 true))

(declare-fun array_inv!9030 (array!25877) Bool)

(assert (=> start!39614 (and (array_inv!9030 _values!549) e!252011)))

(declare-fun array_inv!9031 (array!25879) Bool)

(assert (=> start!39614 (array_inv!9031 _keys!709)))

(declare-fun b!424202 () Bool)

(declare-fun res!248198 () Bool)

(assert (=> b!424202 (=> (not res!248198) (not e!252010))))

(assert (=> b!424202 (= res!248198 (arrayNoDuplicates!0 lt!194320 #b00000000000000000000000000000000 Nil!7272))))

(assert (= (and start!39614 res!248199) b!424207))

(assert (= (and b!424207 res!248202) b!424199))

(assert (= (and b!424199 res!248197) b!424203))

(assert (= (and b!424203 res!248193) b!424195))

(assert (= (and b!424195 res!248194) b!424206))

(assert (= (and b!424206 res!248201) b!424201))

(assert (= (and b!424201 res!248191) b!424205))

(assert (= (and b!424205 res!248195) b!424196))

(assert (= (and b!424196 res!248196) b!424197))

(assert (= (and b!424197 res!248192) b!424202))

(assert (= (and b!424202 res!248198) b!424208))

(assert (= (and b!424208 res!248200) b!424204))

(assert (= (and b!424198 condMapEmpty!18159) mapIsEmpty!18159))

(assert (= (and b!424198 (not condMapEmpty!18159)) mapNonEmpty!18159))

(get-info :version)

(assert (= (and mapNonEmpty!18159 ((_ is ValueCellFull!5169) mapValue!18159)) b!424200))

(assert (= (and b!424198 ((_ is ValueCellFull!5169) mapDefault!18159)) b!424194))

(assert (= start!39614 b!424198))

(declare-fun m!413395 () Bool)

(assert (=> b!424196 m!413395))

(declare-fun m!413397 () Bool)

(assert (=> b!424195 m!413397))

(declare-fun m!413399 () Bool)

(assert (=> b!424205 m!413399))

(declare-fun m!413401 () Bool)

(assert (=> mapNonEmpty!18159 m!413401))

(declare-fun m!413403 () Bool)

(assert (=> b!424204 m!413403))

(declare-fun m!413405 () Bool)

(assert (=> b!424204 m!413405))

(declare-fun m!413407 () Bool)

(assert (=> b!424204 m!413407))

(declare-fun m!413409 () Bool)

(assert (=> b!424201 m!413409))

(declare-fun m!413411 () Bool)

(assert (=> b!424207 m!413411))

(declare-fun m!413413 () Bool)

(assert (=> b!424203 m!413413))

(declare-fun m!413415 () Bool)

(assert (=> b!424197 m!413415))

(declare-fun m!413417 () Bool)

(assert (=> b!424197 m!413417))

(declare-fun m!413419 () Bool)

(assert (=> start!39614 m!413419))

(declare-fun m!413421 () Bool)

(assert (=> start!39614 m!413421))

(declare-fun m!413423 () Bool)

(assert (=> b!424202 m!413423))

(check-sat (not mapNonEmpty!18159) (not b!424197) (not b!424203) (not b!424201) (not start!39614) (not b!424196) (not b_next!9873) b_and!17547 (not b!424195) (not b!424202) (not b!424204) (not b!424207) tp_is_empty!11025)
(check-sat b_and!17547 (not b_next!9873))
