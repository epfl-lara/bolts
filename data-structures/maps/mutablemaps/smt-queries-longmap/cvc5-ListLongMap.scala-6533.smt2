; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83110 () Bool)

(assert start!83110)

(declare-fun mapNonEmpty!34969 () Bool)

(declare-fun mapRes!34969 () Bool)

(declare-fun tp!66538 () Bool)

(declare-fun e!546308 () Bool)

(assert (=> mapNonEmpty!34969 (= mapRes!34969 (and tp!66538 e!546308))))

(declare-fun mapKey!34969 () (_ BitVec 32))

(declare-datatypes ((V!34281 0))(
  ( (V!34282 (val!11037 Int)) )
))
(declare-datatypes ((ValueCell!10505 0))(
  ( (ValueCellFull!10505 (v!13596 V!34281)) (EmptyCell!10505) )
))
(declare-fun mapValue!34969 () ValueCell!10505)

(declare-fun mapRest!34969 () (Array (_ BitVec 32) ValueCell!10505))

(declare-datatypes ((array!59995 0))(
  ( (array!59996 (arr!28857 (Array (_ BitVec 32) ValueCell!10505)) (size!29337 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59995)

(assert (=> mapNonEmpty!34969 (= (arr!28857 _values!1425) (store mapRest!34969 mapKey!34969 mapValue!34969))))

(declare-fun b!969032 () Bool)

(declare-fun e!546312 () Bool)

(assert (=> b!969032 (= e!546312 false)))

(declare-fun lt!431554 () Bool)

(declare-datatypes ((array!59997 0))(
  ( (array!59998 (arr!28858 (Array (_ BitVec 32) (_ BitVec 64))) (size!29338 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59997)

(declare-datatypes ((List!20138 0))(
  ( (Nil!20135) (Cons!20134 (h!21296 (_ BitVec 64)) (t!28509 List!20138)) )
))
(declare-fun arrayNoDuplicates!0 (array!59997 (_ BitVec 32) List!20138) Bool)

(assert (=> b!969032 (= lt!431554 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20135))))

(declare-fun b!969033 () Bool)

(declare-fun e!546311 () Bool)

(declare-fun tp_is_empty!21973 () Bool)

(assert (=> b!969033 (= e!546311 tp_is_empty!21973)))

(declare-fun res!648727 () Bool)

(assert (=> start!83110 (=> (not res!648727) (not e!546312))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83110 (= res!648727 (validMask!0 mask!2147))))

(assert (=> start!83110 e!546312))

(assert (=> start!83110 true))

(declare-fun e!546309 () Bool)

(declare-fun array_inv!22233 (array!59995) Bool)

(assert (=> start!83110 (and (array_inv!22233 _values!1425) e!546309)))

(declare-fun array_inv!22234 (array!59997) Bool)

(assert (=> start!83110 (array_inv!22234 _keys!1717)))

(declare-fun b!969034 () Bool)

(declare-fun res!648725 () Bool)

(assert (=> b!969034 (=> (not res!648725) (not e!546312))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969034 (= res!648725 (and (= (size!29337 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29338 _keys!1717) (size!29337 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969035 () Bool)

(declare-fun res!648726 () Bool)

(assert (=> b!969035 (=> (not res!648726) (not e!546312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59997 (_ BitVec 32)) Bool)

(assert (=> b!969035 (= res!648726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!34969 () Bool)

(assert (=> mapIsEmpty!34969 mapRes!34969))

(declare-fun b!969036 () Bool)

(assert (=> b!969036 (= e!546309 (and e!546311 mapRes!34969))))

(declare-fun condMapEmpty!34969 () Bool)

(declare-fun mapDefault!34969 () ValueCell!10505)

