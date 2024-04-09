; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38270 () Bool)

(assert start!38270)

(declare-fun b!394589 () Bool)

(declare-fun e!238899 () Bool)

(declare-datatypes ((array!23423 0))(
  ( (array!23424 (arr!11165 (Array (_ BitVec 32) (_ BitVec 64))) (size!11517 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23423)

(assert (=> b!394589 (= e!238899 (and (bvsle #b00000000000000000000000000000000 (size!11517 _keys!709)) (bvsge (size!11517 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!394590 () Bool)

(declare-fun e!238897 () Bool)

(declare-fun tp_is_empty!9771 () Bool)

(assert (=> b!394590 (= e!238897 tp_is_empty!9771)))

(declare-fun b!394592 () Bool)

(declare-fun e!238895 () Bool)

(assert (=> b!394592 (= e!238895 tp_is_empty!9771)))

(declare-fun b!394593 () Bool)

(declare-fun res!226250 () Bool)

(assert (=> b!394593 (=> (not res!226250) (not e!238899))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14133 0))(
  ( (V!14134 (val!4930 Int)) )
))
(declare-datatypes ((ValueCell!4542 0))(
  ( (ValueCellFull!4542 (v!7171 V!14133)) (EmptyCell!4542) )
))
(declare-datatypes ((array!23425 0))(
  ( (array!23426 (arr!11166 (Array (_ BitVec 32) ValueCell!4542)) (size!11518 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23425)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394593 (= res!226250 (and (= (size!11518 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11517 _keys!709) (size!11518 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394594 () Bool)

(declare-fun res!226249 () Bool)

(assert (=> b!394594 (=> (not res!226249) (not e!238899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394594 (= res!226249 (validMask!0 mask!1025))))

(declare-fun b!394595 () Bool)

(declare-fun e!238898 () Bool)

(declare-fun mapRes!16257 () Bool)

(assert (=> b!394595 (= e!238898 (and e!238897 mapRes!16257))))

(declare-fun condMapEmpty!16257 () Bool)

(declare-fun mapDefault!16257 () ValueCell!4542)

(assert (=> b!394595 (= condMapEmpty!16257 (= (arr!11166 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4542)) mapDefault!16257)))))

(declare-fun mapNonEmpty!16257 () Bool)

(declare-fun tp!32052 () Bool)

(assert (=> mapNonEmpty!16257 (= mapRes!16257 (and tp!32052 e!238895))))

(declare-fun mapKey!16257 () (_ BitVec 32))

(declare-fun mapValue!16257 () ValueCell!4542)

(declare-fun mapRest!16257 () (Array (_ BitVec 32) ValueCell!4542))

(assert (=> mapNonEmpty!16257 (= (arr!11166 _values!549) (store mapRest!16257 mapKey!16257 mapValue!16257))))

(declare-fun mapIsEmpty!16257 () Bool)

(assert (=> mapIsEmpty!16257 mapRes!16257))

(declare-fun b!394591 () Bool)

(declare-fun res!226248 () Bool)

(assert (=> b!394591 (=> (not res!226248) (not e!238899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23423 (_ BitVec 32)) Bool)

(assert (=> b!394591 (= res!226248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!226247 () Bool)

(assert (=> start!38270 (=> (not res!226247) (not e!238899))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38270 (= res!226247 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11517 _keys!709))))))

(assert (=> start!38270 e!238899))

(assert (=> start!38270 true))

(declare-fun array_inv!8174 (array!23425) Bool)

(assert (=> start!38270 (and (array_inv!8174 _values!549) e!238898)))

(declare-fun array_inv!8175 (array!23423) Bool)

(assert (=> start!38270 (array_inv!8175 _keys!709)))

(assert (= (and start!38270 res!226247) b!394594))

(assert (= (and b!394594 res!226249) b!394593))

(assert (= (and b!394593 res!226250) b!394591))

(assert (= (and b!394591 res!226248) b!394589))

(assert (= (and b!394595 condMapEmpty!16257) mapIsEmpty!16257))

(assert (= (and b!394595 (not condMapEmpty!16257)) mapNonEmpty!16257))

(get-info :version)

(assert (= (and mapNonEmpty!16257 ((_ is ValueCellFull!4542) mapValue!16257)) b!394592))

(assert (= (and b!394595 ((_ is ValueCellFull!4542) mapDefault!16257)) b!394590))

(assert (= start!38270 b!394595))

(declare-fun m!390973 () Bool)

(assert (=> b!394594 m!390973))

(declare-fun m!390975 () Bool)

(assert (=> mapNonEmpty!16257 m!390975))

(declare-fun m!390977 () Bool)

(assert (=> b!394591 m!390977))

(declare-fun m!390979 () Bool)

(assert (=> start!38270 m!390979))

(declare-fun m!390981 () Bool)

(assert (=> start!38270 m!390981))

(check-sat (not start!38270) (not b!394591) (not b!394594) tp_is_empty!9771 (not mapNonEmpty!16257))
(check-sat)
(get-model)

(declare-fun d!73163 () Bool)

(assert (=> d!73163 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!394594 d!73163))

(declare-fun d!73165 () Bool)

(assert (=> d!73165 (= (array_inv!8174 _values!549) (bvsge (size!11518 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!38270 d!73165))

(declare-fun d!73167 () Bool)

(assert (=> d!73167 (= (array_inv!8175 _keys!709) (bvsge (size!11517 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!38270 d!73167))

(declare-fun b!394625 () Bool)

(declare-fun e!238922 () Bool)

(declare-fun e!238921 () Bool)

(assert (=> b!394625 (= e!238922 e!238921)))

(declare-fun c!54464 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!394625 (= c!54464 (validKeyInArray!0 (select (arr!11165 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!394626 () Bool)

(declare-fun e!238923 () Bool)

(declare-fun call!27860 () Bool)

(assert (=> b!394626 (= e!238923 call!27860)))

(declare-fun bm!27857 () Bool)

(assert (=> bm!27857 (= call!27860 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!394627 () Bool)

(assert (=> b!394627 (= e!238921 e!238923)))

(declare-fun lt!186997 () (_ BitVec 64))

(assert (=> b!394627 (= lt!186997 (select (arr!11165 _keys!709) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!12021 0))(
  ( (Unit!12022) )
))
(declare-fun lt!186996 () Unit!12021)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23423 (_ BitVec 64) (_ BitVec 32)) Unit!12021)

(assert (=> b!394627 (= lt!186996 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!186997 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!23423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!394627 (arrayContainsKey!0 _keys!709 lt!186997 #b00000000000000000000000000000000)))

(declare-fun lt!186995 () Unit!12021)

(assert (=> b!394627 (= lt!186995 lt!186996)))

(declare-fun res!226268 () Bool)

(declare-datatypes ((SeekEntryResult!3508 0))(
  ( (MissingZero!3508 (index!16211 (_ BitVec 32))) (Found!3508 (index!16212 (_ BitVec 32))) (Intermediate!3508 (undefined!4320 Bool) (index!16213 (_ BitVec 32)) (x!38555 (_ BitVec 32))) (Undefined!3508) (MissingVacant!3508 (index!16214 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23423 (_ BitVec 32)) SeekEntryResult!3508)

(assert (=> b!394627 (= res!226268 (= (seekEntryOrOpen!0 (select (arr!11165 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3508 #b00000000000000000000000000000000)))))

(assert (=> b!394627 (=> (not res!226268) (not e!238923))))

(declare-fun d!73169 () Bool)

(declare-fun res!226267 () Bool)

(assert (=> d!73169 (=> res!226267 e!238922)))

(assert (=> d!73169 (= res!226267 (bvsge #b00000000000000000000000000000000 (size!11517 _keys!709)))))

(assert (=> d!73169 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!238922)))

(declare-fun b!394628 () Bool)

(assert (=> b!394628 (= e!238921 call!27860)))

(assert (= (and d!73169 (not res!226267)) b!394625))

(assert (= (and b!394625 c!54464) b!394627))

(assert (= (and b!394625 (not c!54464)) b!394628))

(assert (= (and b!394627 res!226268) b!394626))

(assert (= (or b!394626 b!394628) bm!27857))

(declare-fun m!390993 () Bool)

(assert (=> b!394625 m!390993))

(assert (=> b!394625 m!390993))

(declare-fun m!390995 () Bool)

(assert (=> b!394625 m!390995))

(declare-fun m!390997 () Bool)

(assert (=> bm!27857 m!390997))

(assert (=> b!394627 m!390993))

(declare-fun m!390999 () Bool)

(assert (=> b!394627 m!390999))

(declare-fun m!391001 () Bool)

(assert (=> b!394627 m!391001))

(assert (=> b!394627 m!390993))

(declare-fun m!391003 () Bool)

(assert (=> b!394627 m!391003))

(assert (=> b!394591 d!73169))

(declare-fun mapIsEmpty!16263 () Bool)

(declare-fun mapRes!16263 () Bool)

(assert (=> mapIsEmpty!16263 mapRes!16263))

(declare-fun condMapEmpty!16263 () Bool)

(declare-fun mapDefault!16263 () ValueCell!4542)

(assert (=> mapNonEmpty!16257 (= condMapEmpty!16263 (= mapRest!16257 ((as const (Array (_ BitVec 32) ValueCell!4542)) mapDefault!16263)))))

(declare-fun e!238929 () Bool)

(assert (=> mapNonEmpty!16257 (= tp!32052 (and e!238929 mapRes!16263))))

(declare-fun b!394636 () Bool)

(assert (=> b!394636 (= e!238929 tp_is_empty!9771)))

(declare-fun mapNonEmpty!16263 () Bool)

(declare-fun tp!32058 () Bool)

(declare-fun e!238928 () Bool)

(assert (=> mapNonEmpty!16263 (= mapRes!16263 (and tp!32058 e!238928))))

(declare-fun mapRest!16263 () (Array (_ BitVec 32) ValueCell!4542))

(declare-fun mapValue!16263 () ValueCell!4542)

(declare-fun mapKey!16263 () (_ BitVec 32))

(assert (=> mapNonEmpty!16263 (= mapRest!16257 (store mapRest!16263 mapKey!16263 mapValue!16263))))

(declare-fun b!394635 () Bool)

(assert (=> b!394635 (= e!238928 tp_is_empty!9771)))

(assert (= (and mapNonEmpty!16257 condMapEmpty!16263) mapIsEmpty!16263))

(assert (= (and mapNonEmpty!16257 (not condMapEmpty!16263)) mapNonEmpty!16263))

(assert (= (and mapNonEmpty!16263 ((_ is ValueCellFull!4542) mapValue!16263)) b!394635))

(assert (= (and mapNonEmpty!16257 ((_ is ValueCellFull!4542) mapDefault!16263)) b!394636))

(declare-fun m!391005 () Bool)

(assert (=> mapNonEmpty!16263 m!391005))

(check-sat (not bm!27857) (not b!394625) (not mapNonEmpty!16263) (not b!394627) tp_is_empty!9771)
(check-sat)
