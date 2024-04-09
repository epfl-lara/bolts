; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38444 () Bool)

(assert start!38444)

(declare-fun b!396203 () Bool)

(declare-fun e!239770 () Bool)

(declare-fun e!239768 () Bool)

(declare-fun mapRes!16404 () Bool)

(assert (=> b!396203 (= e!239770 (and e!239768 mapRes!16404))))

(declare-fun condMapEmpty!16404 () Bool)

(declare-datatypes ((V!14245 0))(
  ( (V!14246 (val!4972 Int)) )
))
(declare-datatypes ((ValueCell!4584 0))(
  ( (ValueCellFull!4584 (v!7215 V!14245)) (EmptyCell!4584) )
))
(declare-datatypes ((array!23599 0))(
  ( (array!23600 (arr!11246 (Array (_ BitVec 32) ValueCell!4584)) (size!11598 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23599)

(declare-fun mapDefault!16404 () ValueCell!4584)

(assert (=> b!396203 (= condMapEmpty!16404 (= (arr!11246 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4584)) mapDefault!16404)))))

(declare-fun b!396204 () Bool)

(declare-fun e!239773 () Bool)

(declare-fun tp_is_empty!9855 () Bool)

(assert (=> b!396204 (= e!239773 tp_is_empty!9855)))

(declare-fun mapIsEmpty!16404 () Bool)

(assert (=> mapIsEmpty!16404 mapRes!16404))

(declare-fun b!396205 () Bool)

(declare-fun res!227364 () Bool)

(declare-fun e!239772 () Bool)

(assert (=> b!396205 (=> (not res!227364) (not e!239772))))

(declare-datatypes ((array!23601 0))(
  ( (array!23602 (arr!11247 (Array (_ BitVec 32) (_ BitVec 64))) (size!11599 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23601)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396205 (= res!227364 (or (= (select (arr!11247 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11247 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396206 () Bool)

(declare-fun res!227360 () Bool)

(assert (=> b!396206 (=> (not res!227360) (not e!239772))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396206 (= res!227360 (validMask!0 mask!1025))))

(declare-fun b!396207 () Bool)

(declare-fun e!239769 () Bool)

(assert (=> b!396207 (= e!239772 e!239769)))

(declare-fun res!227363 () Bool)

(assert (=> b!396207 (=> (not res!227363) (not e!239769))))

(declare-fun lt!187106 () array!23601)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23601 (_ BitVec 32)) Bool)

(assert (=> b!396207 (= res!227363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187106 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!396207 (= lt!187106 (array!23602 (store (arr!11247 _keys!709) i!563 k0!794) (size!11599 _keys!709)))))

(declare-fun mapNonEmpty!16404 () Bool)

(declare-fun tp!32199 () Bool)

(assert (=> mapNonEmpty!16404 (= mapRes!16404 (and tp!32199 e!239773))))

(declare-fun mapRest!16404 () (Array (_ BitVec 32) ValueCell!4584))

(declare-fun mapValue!16404 () ValueCell!4584)

(declare-fun mapKey!16404 () (_ BitVec 32))

(assert (=> mapNonEmpty!16404 (= (arr!11246 _values!549) (store mapRest!16404 mapKey!16404 mapValue!16404))))

(declare-fun b!396208 () Bool)

(declare-fun res!227355 () Bool)

(assert (=> b!396208 (=> (not res!227355) (not e!239772))))

(declare-datatypes ((List!6491 0))(
  ( (Nil!6488) (Cons!6487 (h!7343 (_ BitVec 64)) (t!11673 List!6491)) )
))
(declare-fun arrayNoDuplicates!0 (array!23601 (_ BitVec 32) List!6491) Bool)

(assert (=> b!396208 (= res!227355 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6488))))

(declare-fun b!396209 () Bool)

(declare-fun res!227357 () Bool)

(assert (=> b!396209 (=> (not res!227357) (not e!239772))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396209 (= res!227357 (and (= (size!11598 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11599 _keys!709) (size!11598 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!227361 () Bool)

(assert (=> start!38444 (=> (not res!227361) (not e!239772))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38444 (= res!227361 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11599 _keys!709))))))

(assert (=> start!38444 e!239772))

(assert (=> start!38444 true))

(declare-fun array_inv!8232 (array!23599) Bool)

(assert (=> start!38444 (and (array_inv!8232 _values!549) e!239770)))

(declare-fun array_inv!8233 (array!23601) Bool)

(assert (=> start!38444 (array_inv!8233 _keys!709)))

(declare-fun b!396210 () Bool)

(assert (=> b!396210 (= e!239769 false)))

(declare-fun lt!187107 () Bool)

(assert (=> b!396210 (= lt!187107 (arrayNoDuplicates!0 lt!187106 #b00000000000000000000000000000000 Nil!6488))))

(declare-fun b!396211 () Bool)

(assert (=> b!396211 (= e!239768 tp_is_empty!9855)))

(declare-fun b!396212 () Bool)

(declare-fun res!227358 () Bool)

(assert (=> b!396212 (=> (not res!227358) (not e!239772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396212 (= res!227358 (validKeyInArray!0 k0!794))))

(declare-fun b!396213 () Bool)

(declare-fun res!227356 () Bool)

(assert (=> b!396213 (=> (not res!227356) (not e!239772))))

(assert (=> b!396213 (= res!227356 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11599 _keys!709))))))

(declare-fun b!396214 () Bool)

(declare-fun res!227362 () Bool)

(assert (=> b!396214 (=> (not res!227362) (not e!239772))))

(declare-fun arrayContainsKey!0 (array!23601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396214 (= res!227362 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!396215 () Bool)

(declare-fun res!227359 () Bool)

(assert (=> b!396215 (=> (not res!227359) (not e!239772))))

(assert (=> b!396215 (= res!227359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!38444 res!227361) b!396206))

(assert (= (and b!396206 res!227360) b!396209))

(assert (= (and b!396209 res!227357) b!396215))

(assert (= (and b!396215 res!227359) b!396208))

(assert (= (and b!396208 res!227355) b!396213))

(assert (= (and b!396213 res!227356) b!396212))

(assert (= (and b!396212 res!227358) b!396205))

(assert (= (and b!396205 res!227364) b!396214))

(assert (= (and b!396214 res!227362) b!396207))

(assert (= (and b!396207 res!227363) b!396210))

(assert (= (and b!396203 condMapEmpty!16404) mapIsEmpty!16404))

(assert (= (and b!396203 (not condMapEmpty!16404)) mapNonEmpty!16404))

(get-info :version)

(assert (= (and mapNonEmpty!16404 ((_ is ValueCellFull!4584) mapValue!16404)) b!396204))

(assert (= (and b!396203 ((_ is ValueCellFull!4584) mapDefault!16404)) b!396211))

(assert (= start!38444 b!396203))

(declare-fun m!391893 () Bool)

(assert (=> b!396215 m!391893))

(declare-fun m!391895 () Bool)

(assert (=> b!396210 m!391895))

(declare-fun m!391897 () Bool)

(assert (=> b!396214 m!391897))

(declare-fun m!391899 () Bool)

(assert (=> b!396205 m!391899))

(declare-fun m!391901 () Bool)

(assert (=> b!396206 m!391901))

(declare-fun m!391903 () Bool)

(assert (=> b!396207 m!391903))

(declare-fun m!391905 () Bool)

(assert (=> b!396207 m!391905))

(declare-fun m!391907 () Bool)

(assert (=> b!396208 m!391907))

(declare-fun m!391909 () Bool)

(assert (=> start!38444 m!391909))

(declare-fun m!391911 () Bool)

(assert (=> start!38444 m!391911))

(declare-fun m!391913 () Bool)

(assert (=> b!396212 m!391913))

(declare-fun m!391915 () Bool)

(assert (=> mapNonEmpty!16404 m!391915))

(check-sat (not b!396214) (not b!396207) tp_is_empty!9855 (not b!396212) (not start!38444) (not b!396208) (not b!396215) (not b!396210) (not mapNonEmpty!16404) (not b!396206))
(check-sat)
