; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36762 () Bool)

(assert start!36762)

(declare-fun b!366591 () Bool)

(declare-fun e!224435 () Bool)

(assert (=> b!366591 (= e!224435 false)))

(declare-fun lt!169237 () Bool)

(declare-datatypes ((array!20985 0))(
  ( (array!20986 (arr!9958 (Array (_ BitVec 32) (_ BitVec 64))) (size!10310 (_ BitVec 32))) )
))
(declare-fun lt!169236 () array!20985)

(declare-datatypes ((List!5571 0))(
  ( (Nil!5568) (Cons!5567 (h!6423 (_ BitVec 64)) (t!10729 List!5571)) )
))
(declare-fun arrayNoDuplicates!0 (array!20985 (_ BitVec 32) List!5571) Bool)

(assert (=> b!366591 (= lt!169237 (arrayNoDuplicates!0 lt!169236 #b00000000000000000000000000000000 Nil!5568))))

(declare-fun b!366592 () Bool)

(declare-fun res!205182 () Bool)

(declare-fun e!224431 () Bool)

(assert (=> b!366592 (=> (not res!205182) (not e!224431))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366592 (= res!205182 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!14358 () Bool)

(declare-fun mapRes!14358 () Bool)

(declare-fun tp!28434 () Bool)

(declare-fun e!224432 () Bool)

(assert (=> mapNonEmpty!14358 (= mapRes!14358 (and tp!28434 e!224432))))

(declare-datatypes ((V!12477 0))(
  ( (V!12478 (val!4309 Int)) )
))
(declare-datatypes ((ValueCell!3921 0))(
  ( (ValueCellFull!3921 (v!6502 V!12477)) (EmptyCell!3921) )
))
(declare-datatypes ((array!20987 0))(
  ( (array!20988 (arr!9959 (Array (_ BitVec 32) ValueCell!3921)) (size!10311 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20987)

(declare-fun mapValue!14358 () ValueCell!3921)

(declare-fun mapKey!14358 () (_ BitVec 32))

(declare-fun mapRest!14358 () (Array (_ BitVec 32) ValueCell!3921))

(assert (=> mapNonEmpty!14358 (= (arr!9959 _values!506) (store mapRest!14358 mapKey!14358 mapValue!14358))))

(declare-fun b!366593 () Bool)

(declare-fun res!205183 () Bool)

(assert (=> b!366593 (=> (not res!205183) (not e!224431))))

(declare-fun _keys!658 () array!20985)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366593 (= res!205183 (or (= (select (arr!9958 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9958 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366594 () Bool)

(declare-fun res!205185 () Bool)

(assert (=> b!366594 (=> (not res!205185) (not e!224431))))

(assert (=> b!366594 (= res!205185 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10310 _keys!658))))))

(declare-fun b!366595 () Bool)

(declare-fun e!224436 () Bool)

(declare-fun tp_is_empty!8529 () Bool)

(assert (=> b!366595 (= e!224436 tp_is_empty!8529)))

(declare-fun b!366596 () Bool)

(declare-fun res!205188 () Bool)

(assert (=> b!366596 (=> (not res!205188) (not e!224431))))

(assert (=> b!366596 (= res!205188 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5568))))

(declare-fun b!366597 () Bool)

(declare-fun res!205189 () Bool)

(assert (=> b!366597 (=> (not res!205189) (not e!224431))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20985 (_ BitVec 32)) Bool)

(assert (=> b!366597 (= res!205189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14358 () Bool)

(assert (=> mapIsEmpty!14358 mapRes!14358))

(declare-fun b!366598 () Bool)

(declare-fun e!224434 () Bool)

(assert (=> b!366598 (= e!224434 (and e!224436 mapRes!14358))))

(declare-fun condMapEmpty!14358 () Bool)

(declare-fun mapDefault!14358 () ValueCell!3921)

(assert (=> b!366598 (= condMapEmpty!14358 (= (arr!9959 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3921)) mapDefault!14358)))))

(declare-fun res!205184 () Bool)

(assert (=> start!36762 (=> (not res!205184) (not e!224431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36762 (= res!205184 (validMask!0 mask!970))))

(assert (=> start!36762 e!224431))

(assert (=> start!36762 true))

(declare-fun array_inv!7366 (array!20987) Bool)

(assert (=> start!36762 (and (array_inv!7366 _values!506) e!224434)))

(declare-fun array_inv!7367 (array!20985) Bool)

(assert (=> start!36762 (array_inv!7367 _keys!658)))

(declare-fun b!366599 () Bool)

(assert (=> b!366599 (= e!224431 e!224435)))

(declare-fun res!205190 () Bool)

(assert (=> b!366599 (=> (not res!205190) (not e!224435))))

(assert (=> b!366599 (= res!205190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169236 mask!970))))

(assert (=> b!366599 (= lt!169236 (array!20986 (store (arr!9958 _keys!658) i!548 k0!778) (size!10310 _keys!658)))))

(declare-fun b!366600 () Bool)

(assert (=> b!366600 (= e!224432 tp_is_empty!8529)))

(declare-fun b!366601 () Bool)

(declare-fun res!205186 () Bool)

(assert (=> b!366601 (=> (not res!205186) (not e!224431))))

(declare-fun arrayContainsKey!0 (array!20985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366601 (= res!205186 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!366602 () Bool)

(declare-fun res!205187 () Bool)

(assert (=> b!366602 (=> (not res!205187) (not e!224431))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366602 (= res!205187 (and (= (size!10311 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10310 _keys!658) (size!10311 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!36762 res!205184) b!366602))

(assert (= (and b!366602 res!205187) b!366597))

(assert (= (and b!366597 res!205189) b!366596))

(assert (= (and b!366596 res!205188) b!366594))

(assert (= (and b!366594 res!205185) b!366592))

(assert (= (and b!366592 res!205182) b!366593))

(assert (= (and b!366593 res!205183) b!366601))

(assert (= (and b!366601 res!205186) b!366599))

(assert (= (and b!366599 res!205190) b!366591))

(assert (= (and b!366598 condMapEmpty!14358) mapIsEmpty!14358))

(assert (= (and b!366598 (not condMapEmpty!14358)) mapNonEmpty!14358))

(get-info :version)

(assert (= (and mapNonEmpty!14358 ((_ is ValueCellFull!3921) mapValue!14358)) b!366600))

(assert (= (and b!366598 ((_ is ValueCellFull!3921) mapDefault!14358)) b!366595))

(assert (= start!36762 b!366598))

(declare-fun m!363833 () Bool)

(assert (=> b!366593 m!363833))

(declare-fun m!363835 () Bool)

(assert (=> b!366596 m!363835))

(declare-fun m!363837 () Bool)

(assert (=> b!366592 m!363837))

(declare-fun m!363839 () Bool)

(assert (=> mapNonEmpty!14358 m!363839))

(declare-fun m!363841 () Bool)

(assert (=> b!366597 m!363841))

(declare-fun m!363843 () Bool)

(assert (=> b!366591 m!363843))

(declare-fun m!363845 () Bool)

(assert (=> b!366599 m!363845))

(declare-fun m!363847 () Bool)

(assert (=> b!366599 m!363847))

(declare-fun m!363849 () Bool)

(assert (=> b!366601 m!363849))

(declare-fun m!363851 () Bool)

(assert (=> start!36762 m!363851))

(declare-fun m!363853 () Bool)

(assert (=> start!36762 m!363853))

(declare-fun m!363855 () Bool)

(assert (=> start!36762 m!363855))

(check-sat (not b!366597) (not mapNonEmpty!14358) (not b!366599) (not b!366601) (not b!366592) (not b!366591) (not start!36762) (not b!366596) tp_is_empty!8529)
(check-sat)
