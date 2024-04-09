; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38498 () Bool)

(assert start!38498)

(declare-fun b!397256 () Bool)

(declare-fun res!228169 () Bool)

(declare-fun e!240259 () Bool)

(assert (=> b!397256 (=> (not res!228169) (not e!240259))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397256 (= res!228169 (validKeyInArray!0 k0!794))))

(declare-fun b!397257 () Bool)

(declare-fun res!228166 () Bool)

(assert (=> b!397257 (=> (not res!228166) (not e!240259))))

(declare-datatypes ((array!23701 0))(
  ( (array!23702 (arr!11297 (Array (_ BitVec 32) (_ BitVec 64))) (size!11649 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23701)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23701 (_ BitVec 32)) Bool)

(assert (=> b!397257 (= res!228166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397258 () Bool)

(declare-fun res!228170 () Bool)

(assert (=> b!397258 (=> (not res!228170) (not e!240259))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397258 (= res!228170 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11649 _keys!709))))))

(declare-fun b!397259 () Bool)

(declare-fun e!240255 () Bool)

(declare-fun tp_is_empty!9909 () Bool)

(assert (=> b!397259 (= e!240255 tp_is_empty!9909)))

(declare-fun b!397260 () Bool)

(declare-fun res!228165 () Bool)

(assert (=> b!397260 (=> (not res!228165) (not e!240259))))

(assert (=> b!397260 (= res!228165 (or (= (select (arr!11297 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11297 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397261 () Bool)

(declare-fun e!240256 () Bool)

(assert (=> b!397261 (= e!240256 tp_is_empty!9909)))

(declare-fun b!397262 () Bool)

(declare-fun res!228167 () Bool)

(assert (=> b!397262 (=> (not res!228167) (not e!240259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397262 (= res!228167 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16485 () Bool)

(declare-fun mapRes!16485 () Bool)

(declare-fun tp!32280 () Bool)

(assert (=> mapNonEmpty!16485 (= mapRes!16485 (and tp!32280 e!240256))))

(declare-datatypes ((V!14317 0))(
  ( (V!14318 (val!4999 Int)) )
))
(declare-datatypes ((ValueCell!4611 0))(
  ( (ValueCellFull!4611 (v!7242 V!14317)) (EmptyCell!4611) )
))
(declare-datatypes ((array!23703 0))(
  ( (array!23704 (arr!11298 (Array (_ BitVec 32) ValueCell!4611)) (size!11650 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23703)

(declare-fun mapKey!16485 () (_ BitVec 32))

(declare-fun mapValue!16485 () ValueCell!4611)

(declare-fun mapRest!16485 () (Array (_ BitVec 32) ValueCell!4611))

(assert (=> mapNonEmpty!16485 (= (arr!11298 _values!549) (store mapRest!16485 mapKey!16485 mapValue!16485))))

(declare-fun b!397263 () Bool)

(declare-fun e!240254 () Bool)

(assert (=> b!397263 (= e!240259 e!240254)))

(declare-fun res!228172 () Bool)

(assert (=> b!397263 (=> (not res!228172) (not e!240254))))

(declare-fun lt!187269 () array!23701)

(assert (=> b!397263 (= res!228172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187269 mask!1025))))

(assert (=> b!397263 (= lt!187269 (array!23702 (store (arr!11297 _keys!709) i!563 k0!794) (size!11649 _keys!709)))))

(declare-fun b!397264 () Bool)

(declare-fun res!228173 () Bool)

(assert (=> b!397264 (=> (not res!228173) (not e!240259))))

(declare-datatypes ((List!6511 0))(
  ( (Nil!6508) (Cons!6507 (h!7363 (_ BitVec 64)) (t!11693 List!6511)) )
))
(declare-fun arrayNoDuplicates!0 (array!23701 (_ BitVec 32) List!6511) Bool)

(assert (=> b!397264 (= res!228173 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6508))))

(declare-fun mapIsEmpty!16485 () Bool)

(assert (=> mapIsEmpty!16485 mapRes!16485))

(declare-fun res!228174 () Bool)

(assert (=> start!38498 (=> (not res!228174) (not e!240259))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38498 (= res!228174 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11649 _keys!709))))))

(assert (=> start!38498 e!240259))

(assert (=> start!38498 true))

(declare-fun e!240258 () Bool)

(declare-fun array_inv!8270 (array!23703) Bool)

(assert (=> start!38498 (and (array_inv!8270 _values!549) e!240258)))

(declare-fun array_inv!8271 (array!23701) Bool)

(assert (=> start!38498 (array_inv!8271 _keys!709)))

(declare-fun b!397265 () Bool)

(assert (=> b!397265 (= e!240258 (and e!240255 mapRes!16485))))

(declare-fun condMapEmpty!16485 () Bool)

(declare-fun mapDefault!16485 () ValueCell!4611)

(assert (=> b!397265 (= condMapEmpty!16485 (= (arr!11298 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4611)) mapDefault!16485)))))

(declare-fun b!397266 () Bool)

(declare-fun res!228171 () Bool)

(assert (=> b!397266 (=> (not res!228171) (not e!240259))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397266 (= res!228171 (and (= (size!11650 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11649 _keys!709) (size!11650 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397267 () Bool)

(assert (=> b!397267 (= e!240254 false)))

(declare-fun lt!187268 () Bool)

(assert (=> b!397267 (= lt!187268 (arrayNoDuplicates!0 lt!187269 #b00000000000000000000000000000000 Nil!6508))))

(declare-fun b!397268 () Bool)

(declare-fun res!228168 () Bool)

(assert (=> b!397268 (=> (not res!228168) (not e!240259))))

(declare-fun arrayContainsKey!0 (array!23701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397268 (= res!228168 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!38498 res!228174) b!397262))

(assert (= (and b!397262 res!228167) b!397266))

(assert (= (and b!397266 res!228171) b!397257))

(assert (= (and b!397257 res!228166) b!397264))

(assert (= (and b!397264 res!228173) b!397258))

(assert (= (and b!397258 res!228170) b!397256))

(assert (= (and b!397256 res!228169) b!397260))

(assert (= (and b!397260 res!228165) b!397268))

(assert (= (and b!397268 res!228168) b!397263))

(assert (= (and b!397263 res!228172) b!397267))

(assert (= (and b!397265 condMapEmpty!16485) mapIsEmpty!16485))

(assert (= (and b!397265 (not condMapEmpty!16485)) mapNonEmpty!16485))

(get-info :version)

(assert (= (and mapNonEmpty!16485 ((_ is ValueCellFull!4611) mapValue!16485)) b!397261))

(assert (= (and b!397265 ((_ is ValueCellFull!4611) mapDefault!16485)) b!397259))

(assert (= start!38498 b!397265))

(declare-fun m!392541 () Bool)

(assert (=> b!397262 m!392541))

(declare-fun m!392543 () Bool)

(assert (=> start!38498 m!392543))

(declare-fun m!392545 () Bool)

(assert (=> start!38498 m!392545))

(declare-fun m!392547 () Bool)

(assert (=> b!397267 m!392547))

(declare-fun m!392549 () Bool)

(assert (=> b!397260 m!392549))

(declare-fun m!392551 () Bool)

(assert (=> b!397257 m!392551))

(declare-fun m!392553 () Bool)

(assert (=> b!397264 m!392553))

(declare-fun m!392555 () Bool)

(assert (=> b!397268 m!392555))

(declare-fun m!392557 () Bool)

(assert (=> mapNonEmpty!16485 m!392557))

(declare-fun m!392559 () Bool)

(assert (=> b!397256 m!392559))

(declare-fun m!392561 () Bool)

(assert (=> b!397263 m!392561))

(declare-fun m!392563 () Bool)

(assert (=> b!397263 m!392563))

(check-sat (not start!38498) (not b!397268) (not mapNonEmpty!16485) (not b!397263) (not b!397262) (not b!397267) (not b!397264) (not b!397256) tp_is_empty!9909 (not b!397257))
(check-sat)
