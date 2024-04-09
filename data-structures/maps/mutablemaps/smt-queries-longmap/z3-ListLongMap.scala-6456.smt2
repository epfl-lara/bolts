; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82606 () Bool)

(assert start!82606)

(declare-fun b_free!18711 () Bool)

(declare-fun b_next!18711 () Bool)

(assert (=> start!82606 (= b_free!18711 (not b_next!18711))))

(declare-fun tp!65253 () Bool)

(declare-fun b_and!30217 () Bool)

(assert (=> start!82606 (= tp!65253 b_and!30217)))

(declare-fun b!962234 () Bool)

(declare-fun res!644061 () Bool)

(declare-fun e!542667 () Bool)

(assert (=> b!962234 (=> (not res!644061) (not e!542667))))

(declare-datatypes ((array!59109 0))(
  ( (array!59110 (arr!28419 (Array (_ BitVec 32) (_ BitVec 64))) (size!28899 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59109)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962234 (= res!644061 (validKeyInArray!0 (select (arr!28419 _keys!1686) i!803)))))

(declare-fun b!962235 () Bool)

(declare-fun res!644066 () Bool)

(assert (=> b!962235 (=> (not res!644066) (not e!542667))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!962235 (= res!644066 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28899 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28899 _keys!1686))))))

(declare-fun b!962236 () Bool)

(assert (=> b!962236 (= e!542667 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33667 0))(
  ( (V!33668 (val!10807 Int)) )
))
(declare-datatypes ((ValueCell!10275 0))(
  ( (ValueCellFull!10275 (v!13365 V!33667)) (EmptyCell!10275) )
))
(declare-datatypes ((array!59111 0))(
  ( (array!59112 (arr!28420 (Array (_ BitVec 32) ValueCell!10275)) (size!28900 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59111)

(declare-fun minValue!1342 () V!33667)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun lt!430815 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33667)

(declare-datatypes ((tuple2!13964 0))(
  ( (tuple2!13965 (_1!6992 (_ BitVec 64)) (_2!6992 V!33667)) )
))
(declare-datatypes ((List!19846 0))(
  ( (Nil!19843) (Cons!19842 (h!21004 tuple2!13964) (t!28217 List!19846)) )
))
(declare-datatypes ((ListLongMap!12675 0))(
  ( (ListLongMap!12676 (toList!6353 List!19846)) )
))
(declare-fun contains!5407 (ListLongMap!12675 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3538 (array!59109 array!59111 (_ BitVec 32) (_ BitVec 32) V!33667 V!33667 (_ BitVec 32) Int) ListLongMap!12675)

(assert (=> b!962236 (= lt!430815 (contains!5407 (getCurrentListMap!3538 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28419 _keys!1686) i!803)))))

(declare-fun res!644065 () Bool)

(assert (=> start!82606 (=> (not res!644065) (not e!542667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82606 (= res!644065 (validMask!0 mask!2110))))

(assert (=> start!82606 e!542667))

(assert (=> start!82606 true))

(declare-fun e!542664 () Bool)

(declare-fun array_inv!21945 (array!59111) Bool)

(assert (=> start!82606 (and (array_inv!21945 _values!1400) e!542664)))

(declare-fun array_inv!21946 (array!59109) Bool)

(assert (=> start!82606 (array_inv!21946 _keys!1686)))

(assert (=> start!82606 tp!65253))

(declare-fun tp_is_empty!21513 () Bool)

(assert (=> start!82606 tp_is_empty!21513))

(declare-fun b!962237 () Bool)

(declare-fun e!542668 () Bool)

(assert (=> b!962237 (= e!542668 tp_is_empty!21513)))

(declare-fun b!962238 () Bool)

(declare-fun res!644064 () Bool)

(assert (=> b!962238 (=> (not res!644064) (not e!542667))))

(declare-datatypes ((List!19847 0))(
  ( (Nil!19844) (Cons!19843 (h!21005 (_ BitVec 64)) (t!28218 List!19847)) )
))
(declare-fun arrayNoDuplicates!0 (array!59109 (_ BitVec 32) List!19847) Bool)

(assert (=> b!962238 (= res!644064 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19844))))

(declare-fun b!962239 () Bool)

(declare-fun res!644062 () Bool)

(assert (=> b!962239 (=> (not res!644062) (not e!542667))))

(assert (=> b!962239 (= res!644062 (and (= (size!28900 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28899 _keys!1686) (size!28900 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962240 () Bool)

(declare-fun res!644063 () Bool)

(assert (=> b!962240 (=> (not res!644063) (not e!542667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59109 (_ BitVec 32)) Bool)

(assert (=> b!962240 (= res!644063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34264 () Bool)

(declare-fun mapRes!34264 () Bool)

(declare-fun tp!65254 () Bool)

(assert (=> mapNonEmpty!34264 (= mapRes!34264 (and tp!65254 e!542668))))

(declare-fun mapKey!34264 () (_ BitVec 32))

(declare-fun mapValue!34264 () ValueCell!10275)

(declare-fun mapRest!34264 () (Array (_ BitVec 32) ValueCell!10275))

(assert (=> mapNonEmpty!34264 (= (arr!28420 _values!1400) (store mapRest!34264 mapKey!34264 mapValue!34264))))

(declare-fun mapIsEmpty!34264 () Bool)

(assert (=> mapIsEmpty!34264 mapRes!34264))

(declare-fun b!962241 () Bool)

(declare-fun e!542665 () Bool)

(assert (=> b!962241 (= e!542664 (and e!542665 mapRes!34264))))

(declare-fun condMapEmpty!34264 () Bool)

(declare-fun mapDefault!34264 () ValueCell!10275)

(assert (=> b!962241 (= condMapEmpty!34264 (= (arr!28420 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10275)) mapDefault!34264)))))

(declare-fun b!962242 () Bool)

(assert (=> b!962242 (= e!542665 tp_is_empty!21513)))

(assert (= (and start!82606 res!644065) b!962239))

(assert (= (and b!962239 res!644062) b!962240))

(assert (= (and b!962240 res!644063) b!962238))

(assert (= (and b!962238 res!644064) b!962235))

(assert (= (and b!962235 res!644066) b!962234))

(assert (= (and b!962234 res!644061) b!962236))

(assert (= (and b!962241 condMapEmpty!34264) mapIsEmpty!34264))

(assert (= (and b!962241 (not condMapEmpty!34264)) mapNonEmpty!34264))

(get-info :version)

(assert (= (and mapNonEmpty!34264 ((_ is ValueCellFull!10275) mapValue!34264)) b!962237))

(assert (= (and b!962241 ((_ is ValueCellFull!10275) mapDefault!34264)) b!962242))

(assert (= start!82606 b!962241))

(declare-fun m!892005 () Bool)

(assert (=> b!962236 m!892005))

(declare-fun m!892007 () Bool)

(assert (=> b!962236 m!892007))

(assert (=> b!962236 m!892005))

(assert (=> b!962236 m!892007))

(declare-fun m!892009 () Bool)

(assert (=> b!962236 m!892009))

(declare-fun m!892011 () Bool)

(assert (=> mapNonEmpty!34264 m!892011))

(declare-fun m!892013 () Bool)

(assert (=> start!82606 m!892013))

(declare-fun m!892015 () Bool)

(assert (=> start!82606 m!892015))

(declare-fun m!892017 () Bool)

(assert (=> start!82606 m!892017))

(assert (=> b!962234 m!892007))

(assert (=> b!962234 m!892007))

(declare-fun m!892019 () Bool)

(assert (=> b!962234 m!892019))

(declare-fun m!892021 () Bool)

(assert (=> b!962238 m!892021))

(declare-fun m!892023 () Bool)

(assert (=> b!962240 m!892023))

(check-sat (not b!962236) (not b!962234) (not b!962238) (not b_next!18711) (not mapNonEmpty!34264) (not start!82606) b_and!30217 (not b!962240) tp_is_empty!21513)
(check-sat b_and!30217 (not b_next!18711))
