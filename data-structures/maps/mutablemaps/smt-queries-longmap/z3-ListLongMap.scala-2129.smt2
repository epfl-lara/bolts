; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36022 () Bool)

(assert start!36022)

(declare-fun b!361485 () Bool)

(declare-fun res!201157 () Bool)

(declare-fun e!221412 () Bool)

(assert (=> b!361485 (=> (not res!201157) (not e!221412))))

(declare-datatypes ((array!20321 0))(
  ( (array!20322 (arr!9644 (Array (_ BitVec 32) (_ BitVec 64))) (size!9996 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20321)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20321 (_ BitVec 32)) Bool)

(assert (=> b!361485 (= res!201157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun from!1924 () (_ BitVec 32))

(declare-fun b!361486 () Bool)

(declare-fun k0!1134 () (_ BitVec 64))

(assert (=> b!361486 (= e!221412 (and (not (= (select (arr!9644 _keys!1541) from!1924) k0!1134)) (bvslt (bvadd #b00000000000000000000000000000001 from!1924) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14124 () Bool)

(declare-fun mapRes!14124 () Bool)

(declare-fun tp!28200 () Bool)

(declare-fun e!221408 () Bool)

(assert (=> mapNonEmpty!14124 (= mapRes!14124 (and tp!28200 e!221408))))

(declare-datatypes ((V!12173 0))(
  ( (V!12174 (val!4243 Int)) )
))
(declare-datatypes ((ValueCell!3855 0))(
  ( (ValueCellFull!3855 (v!6434 V!12173)) (EmptyCell!3855) )
))
(declare-fun mapRest!14124 () (Array (_ BitVec 32) ValueCell!3855))

(declare-fun mapKey!14124 () (_ BitVec 32))

(declare-datatypes ((array!20323 0))(
  ( (array!20324 (arr!9645 (Array (_ BitVec 32) ValueCell!3855)) (size!9997 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20323)

(declare-fun mapValue!14124 () ValueCell!3855)

(assert (=> mapNonEmpty!14124 (= (arr!9645 _values!1277) (store mapRest!14124 mapKey!14124 mapValue!14124))))

(declare-fun b!361487 () Bool)

(declare-fun res!201161 () Bool)

(assert (=> b!361487 (=> (not res!201161) (not e!221412))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361487 (= res!201161 (and (= (size!9997 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9996 _keys!1541) (size!9997 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361488 () Bool)

(declare-fun res!201156 () Bool)

(assert (=> b!361488 (=> (not res!201156) (not e!221412))))

(assert (=> b!361488 (= res!201156 (and (bvsge from!1924 #b00000000000000000000000000000000) (bvslt from!1924 (size!9996 _keys!1541))))))

(declare-fun res!201158 () Bool)

(assert (=> start!36022 (=> (not res!201158) (not e!221412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36022 (= res!201158 (validMask!0 mask!1943))))

(assert (=> start!36022 e!221412))

(assert (=> start!36022 true))

(declare-fun array_inv!7094 (array!20321) Bool)

(assert (=> start!36022 (array_inv!7094 _keys!1541)))

(declare-fun e!221411 () Bool)

(declare-fun array_inv!7095 (array!20323) Bool)

(assert (=> start!36022 (and (array_inv!7095 _values!1277) e!221411)))

(declare-fun b!361489 () Bool)

(declare-fun res!201159 () Bool)

(assert (=> b!361489 (=> (not res!201159) (not e!221412))))

(declare-datatypes ((List!5539 0))(
  ( (Nil!5536) (Cons!5535 (h!6391 (_ BitVec 64)) (t!10697 List!5539)) )
))
(declare-fun arrayNoDuplicates!0 (array!20321 (_ BitVec 32) List!5539) Bool)

(assert (=> b!361489 (= res!201159 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5536))))

(declare-fun b!361490 () Bool)

(declare-fun res!201160 () Bool)

(assert (=> b!361490 (=> (not res!201160) (not e!221412))))

(declare-fun arrayContainsKey!0 (array!20321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361490 (= res!201160 (arrayContainsKey!0 _keys!1541 k0!1134 from!1924))))

(declare-fun b!361491 () Bool)

(declare-fun tp_is_empty!8397 () Bool)

(assert (=> b!361491 (= e!221408 tp_is_empty!8397)))

(declare-fun b!361492 () Bool)

(declare-fun e!221409 () Bool)

(assert (=> b!361492 (= e!221411 (and e!221409 mapRes!14124))))

(declare-fun condMapEmpty!14124 () Bool)

(declare-fun mapDefault!14124 () ValueCell!3855)

(assert (=> b!361492 (= condMapEmpty!14124 (= (arr!9645 _values!1277) ((as const (Array (_ BitVec 32) ValueCell!3855)) mapDefault!14124)))))

(declare-fun mapIsEmpty!14124 () Bool)

(assert (=> mapIsEmpty!14124 mapRes!14124))

(declare-fun b!361493 () Bool)

(assert (=> b!361493 (= e!221409 tp_is_empty!8397)))

(assert (= (and start!36022 res!201158) b!361487))

(assert (= (and b!361487 res!201161) b!361485))

(assert (= (and b!361485 res!201157) b!361489))

(assert (= (and b!361489 res!201159) b!361488))

(assert (= (and b!361488 res!201156) b!361490))

(assert (= (and b!361490 res!201160) b!361486))

(assert (= (and b!361492 condMapEmpty!14124) mapIsEmpty!14124))

(assert (= (and b!361492 (not condMapEmpty!14124)) mapNonEmpty!14124))

(get-info :version)

(assert (= (and mapNonEmpty!14124 ((_ is ValueCellFull!3855) mapValue!14124)) b!361491))

(assert (= (and b!361492 ((_ is ValueCellFull!3855) mapDefault!14124)) b!361493))

(assert (= start!36022 b!361492))

(declare-fun m!358255 () Bool)

(assert (=> start!36022 m!358255))

(declare-fun m!358257 () Bool)

(assert (=> start!36022 m!358257))

(declare-fun m!358259 () Bool)

(assert (=> start!36022 m!358259))

(declare-fun m!358261 () Bool)

(assert (=> mapNonEmpty!14124 m!358261))

(declare-fun m!358263 () Bool)

(assert (=> b!361486 m!358263))

(declare-fun m!358265 () Bool)

(assert (=> b!361485 m!358265))

(declare-fun m!358267 () Bool)

(assert (=> b!361489 m!358267))

(declare-fun m!358269 () Bool)

(assert (=> b!361490 m!358269))

(check-sat (not mapNonEmpty!14124) (not b!361485) (not b!361489) tp_is_empty!8397 (not start!36022) (not b!361490))
(check-sat)
