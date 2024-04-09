; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83088 () Bool)

(assert start!83088)

(declare-fun b!968834 () Bool)

(declare-fun e!546146 () Bool)

(assert (=> b!968834 (= e!546146 false)))

(declare-fun lt!431521 () Bool)

(declare-datatypes ((array!59953 0))(
  ( (array!59954 (arr!28836 (Array (_ BitVec 32) (_ BitVec 64))) (size!29316 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59953)

(declare-datatypes ((List!20129 0))(
  ( (Nil!20126) (Cons!20125 (h!21287 (_ BitVec 64)) (t!28500 List!20129)) )
))
(declare-fun arrayNoDuplicates!0 (array!59953 (_ BitVec 32) List!20129) Bool)

(assert (=> b!968834 (= lt!431521 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20126))))

(declare-fun b!968835 () Bool)

(declare-fun e!546143 () Bool)

(declare-fun tp_is_empty!21951 () Bool)

(assert (=> b!968835 (= e!546143 tp_is_empty!21951)))

(declare-fun b!968836 () Bool)

(declare-fun res!648626 () Bool)

(assert (=> b!968836 (=> (not res!648626) (not e!546146))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59953 (_ BitVec 32)) Bool)

(assert (=> b!968836 (= res!648626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968837 () Bool)

(declare-fun res!648628 () Bool)

(assert (=> b!968837 (=> (not res!648628) (not e!546146))))

(declare-datatypes ((V!34251 0))(
  ( (V!34252 (val!11026 Int)) )
))
(declare-datatypes ((ValueCell!10494 0))(
  ( (ValueCellFull!10494 (v!13585 V!34251)) (EmptyCell!10494) )
))
(declare-datatypes ((array!59955 0))(
  ( (array!59956 (arr!28837 (Array (_ BitVec 32) ValueCell!10494)) (size!29317 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59955)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968837 (= res!648628 (and (= (size!29317 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29316 _keys!1717) (size!29317 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34936 () Bool)

(declare-fun mapRes!34936 () Bool)

(declare-fun tp!66505 () Bool)

(assert (=> mapNonEmpty!34936 (= mapRes!34936 (and tp!66505 e!546143))))

(declare-fun mapKey!34936 () (_ BitVec 32))

(declare-fun mapValue!34936 () ValueCell!10494)

(declare-fun mapRest!34936 () (Array (_ BitVec 32) ValueCell!10494))

(assert (=> mapNonEmpty!34936 (= (arr!28837 _values!1425) (store mapRest!34936 mapKey!34936 mapValue!34936))))

(declare-fun b!968839 () Bool)

(declare-fun e!546144 () Bool)

(declare-fun e!546145 () Bool)

(assert (=> b!968839 (= e!546144 (and e!546145 mapRes!34936))))

(declare-fun condMapEmpty!34936 () Bool)

(declare-fun mapDefault!34936 () ValueCell!10494)

(assert (=> b!968839 (= condMapEmpty!34936 (= (arr!28837 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10494)) mapDefault!34936)))))

(declare-fun mapIsEmpty!34936 () Bool)

(assert (=> mapIsEmpty!34936 mapRes!34936))

(declare-fun res!648627 () Bool)

(assert (=> start!83088 (=> (not res!648627) (not e!546146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83088 (= res!648627 (validMask!0 mask!2147))))

(assert (=> start!83088 e!546146))

(assert (=> start!83088 true))

(declare-fun array_inv!22217 (array!59955) Bool)

(assert (=> start!83088 (and (array_inv!22217 _values!1425) e!546144)))

(declare-fun array_inv!22218 (array!59953) Bool)

(assert (=> start!83088 (array_inv!22218 _keys!1717)))

(declare-fun b!968838 () Bool)

(assert (=> b!968838 (= e!546145 tp_is_empty!21951)))

(assert (= (and start!83088 res!648627) b!968837))

(assert (= (and b!968837 res!648628) b!968836))

(assert (= (and b!968836 res!648626) b!968834))

(assert (= (and b!968839 condMapEmpty!34936) mapIsEmpty!34936))

(assert (= (and b!968839 (not condMapEmpty!34936)) mapNonEmpty!34936))

(get-info :version)

(assert (= (and mapNonEmpty!34936 ((_ is ValueCellFull!10494) mapValue!34936)) b!968835))

(assert (= (and b!968839 ((_ is ValueCellFull!10494) mapDefault!34936)) b!968838))

(assert (= start!83088 b!968839))

(declare-fun m!897095 () Bool)

(assert (=> b!968834 m!897095))

(declare-fun m!897097 () Bool)

(assert (=> b!968836 m!897097))

(declare-fun m!897099 () Bool)

(assert (=> mapNonEmpty!34936 m!897099))

(declare-fun m!897101 () Bool)

(assert (=> start!83088 m!897101))

(declare-fun m!897103 () Bool)

(assert (=> start!83088 m!897103))

(declare-fun m!897105 () Bool)

(assert (=> start!83088 m!897105))

(check-sat (not start!83088) (not b!968834) (not b!968836) (not mapNonEmpty!34936) tp_is_empty!21951)
(check-sat)
