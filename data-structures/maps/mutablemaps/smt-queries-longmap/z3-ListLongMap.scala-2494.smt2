; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38792 () Bool)

(assert start!38792)

(declare-fun mapIsEmpty!16926 () Bool)

(declare-fun mapRes!16926 () Bool)

(assert (=> mapIsEmpty!16926 mapRes!16926))

(declare-fun b!404285 () Bool)

(declare-fun e!243227 () Bool)

(declare-fun tp_is_empty!10203 () Bool)

(assert (=> b!404285 (= e!243227 tp_is_empty!10203)))

(declare-fun mapNonEmpty!16926 () Bool)

(declare-fun tp!33045 () Bool)

(declare-fun e!243226 () Bool)

(assert (=> mapNonEmpty!16926 (= mapRes!16926 (and tp!33045 e!243226))))

(declare-datatypes ((V!14709 0))(
  ( (V!14710 (val!5146 Int)) )
))
(declare-datatypes ((ValueCell!4758 0))(
  ( (ValueCellFull!4758 (v!7389 V!14709)) (EmptyCell!4758) )
))
(declare-datatypes ((array!24271 0))(
  ( (array!24272 (arr!11582 (Array (_ BitVec 32) ValueCell!4758)) (size!11934 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24271)

(declare-fun mapValue!16926 () ValueCell!4758)

(declare-fun mapRest!16926 () (Array (_ BitVec 32) ValueCell!4758))

(declare-fun mapKey!16926 () (_ BitVec 32))

(assert (=> mapNonEmpty!16926 (= (arr!11582 _values!549) (store mapRest!16926 mapKey!16926 mapValue!16926))))

(declare-fun b!404286 () Bool)

(declare-fun res!233232 () Bool)

(declare-fun e!243229 () Bool)

(assert (=> b!404286 (=> (not res!233232) (not e!243229))))

(declare-datatypes ((array!24273 0))(
  ( (array!24274 (arr!11583 (Array (_ BitVec 32) (_ BitVec 64))) (size!11935 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24273)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!404286 (= res!233232 (and (= (size!11934 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11935 _keys!709) (size!11934 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404287 () Bool)

(declare-fun res!233223 () Bool)

(assert (=> b!404287 (=> (not res!233223) (not e!243229))))

(declare-datatypes ((List!6721 0))(
  ( (Nil!6718) (Cons!6717 (h!7573 (_ BitVec 64)) (t!11903 List!6721)) )
))
(declare-fun arrayNoDuplicates!0 (array!24273 (_ BitVec 32) List!6721) Bool)

(assert (=> b!404287 (= res!233223 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6718))))

(declare-fun res!233230 () Bool)

(assert (=> start!38792 (=> (not res!233230) (not e!243229))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38792 (= res!233230 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11935 _keys!709))))))

(assert (=> start!38792 e!243229))

(assert (=> start!38792 true))

(declare-fun e!243225 () Bool)

(declare-fun array_inv!8464 (array!24271) Bool)

(assert (=> start!38792 (and (array_inv!8464 _values!549) e!243225)))

(declare-fun array_inv!8465 (array!24273) Bool)

(assert (=> start!38792 (array_inv!8465 _keys!709)))

(declare-fun b!404288 () Bool)

(assert (=> b!404288 (= e!243225 (and e!243227 mapRes!16926))))

(declare-fun condMapEmpty!16926 () Bool)

(declare-fun mapDefault!16926 () ValueCell!4758)

(assert (=> b!404288 (= condMapEmpty!16926 (= (arr!11582 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4758)) mapDefault!16926)))))

(declare-fun b!404289 () Bool)

(declare-fun res!233231 () Bool)

(assert (=> b!404289 (=> (not res!233231) (not e!243229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24273 (_ BitVec 32)) Bool)

(assert (=> b!404289 (= res!233231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404290 () Bool)

(declare-fun e!243224 () Bool)

(assert (=> b!404290 (= e!243229 e!243224)))

(declare-fun res!233227 () Bool)

(assert (=> b!404290 (=> (not res!233227) (not e!243224))))

(declare-fun lt!188151 () array!24273)

(assert (=> b!404290 (= res!233227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188151 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404290 (= lt!188151 (array!24274 (store (arr!11583 _keys!709) i!563 k0!794) (size!11935 _keys!709)))))

(declare-fun b!404291 () Bool)

(declare-fun res!233226 () Bool)

(assert (=> b!404291 (=> (not res!233226) (not e!243229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404291 (= res!233226 (validMask!0 mask!1025))))

(declare-fun b!404292 () Bool)

(declare-fun res!233225 () Bool)

(assert (=> b!404292 (=> (not res!233225) (not e!243229))))

(assert (=> b!404292 (= res!233225 (or (= (select (arr!11583 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11583 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404293 () Bool)

(declare-fun res!233224 () Bool)

(assert (=> b!404293 (=> (not res!233224) (not e!243229))))

(declare-fun arrayContainsKey!0 (array!24273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404293 (= res!233224 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!404294 () Bool)

(assert (=> b!404294 (= e!243224 false)))

(declare-fun lt!188150 () Bool)

(assert (=> b!404294 (= lt!188150 (arrayNoDuplicates!0 lt!188151 #b00000000000000000000000000000000 Nil!6718))))

(declare-fun b!404295 () Bool)

(declare-fun res!233228 () Bool)

(assert (=> b!404295 (=> (not res!233228) (not e!243229))))

(assert (=> b!404295 (= res!233228 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11935 _keys!709))))))

(declare-fun b!404296 () Bool)

(declare-fun res!233229 () Bool)

(assert (=> b!404296 (=> (not res!233229) (not e!243229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404296 (= res!233229 (validKeyInArray!0 k0!794))))

(declare-fun b!404297 () Bool)

(assert (=> b!404297 (= e!243226 tp_is_empty!10203)))

(assert (= (and start!38792 res!233230) b!404291))

(assert (= (and b!404291 res!233226) b!404286))

(assert (= (and b!404286 res!233232) b!404289))

(assert (= (and b!404289 res!233231) b!404287))

(assert (= (and b!404287 res!233223) b!404295))

(assert (= (and b!404295 res!233228) b!404296))

(assert (= (and b!404296 res!233229) b!404292))

(assert (= (and b!404292 res!233225) b!404293))

(assert (= (and b!404293 res!233224) b!404290))

(assert (= (and b!404290 res!233227) b!404294))

(assert (= (and b!404288 condMapEmpty!16926) mapIsEmpty!16926))

(assert (= (and b!404288 (not condMapEmpty!16926)) mapNonEmpty!16926))

(get-info :version)

(assert (= (and mapNonEmpty!16926 ((_ is ValueCellFull!4758) mapValue!16926)) b!404297))

(assert (= (and b!404288 ((_ is ValueCellFull!4758) mapDefault!16926)) b!404285))

(assert (= start!38792 b!404288))

(declare-fun m!397149 () Bool)

(assert (=> b!404291 m!397149))

(declare-fun m!397151 () Bool)

(assert (=> b!404290 m!397151))

(declare-fun m!397153 () Bool)

(assert (=> b!404290 m!397153))

(declare-fun m!397155 () Bool)

(assert (=> b!404294 m!397155))

(declare-fun m!397157 () Bool)

(assert (=> b!404287 m!397157))

(declare-fun m!397159 () Bool)

(assert (=> mapNonEmpty!16926 m!397159))

(declare-fun m!397161 () Bool)

(assert (=> start!38792 m!397161))

(declare-fun m!397163 () Bool)

(assert (=> start!38792 m!397163))

(declare-fun m!397165 () Bool)

(assert (=> b!404293 m!397165))

(declare-fun m!397167 () Bool)

(assert (=> b!404289 m!397167))

(declare-fun m!397169 () Bool)

(assert (=> b!404296 m!397169))

(declare-fun m!397171 () Bool)

(assert (=> b!404292 m!397171))

(check-sat (not b!404293) (not b!404294) (not start!38792) (not b!404291) (not mapNonEmpty!16926) (not b!404287) (not b!404290) (not b!404289) (not b!404296) tp_is_empty!10203)
(check-sat)
