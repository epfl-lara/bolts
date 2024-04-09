; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82806 () Bool)

(assert start!82806)

(declare-fun b_free!18911 () Bool)

(declare-fun b_next!18911 () Bool)

(assert (=> start!82806 (= b_free!18911 (not b_next!18911))))

(declare-fun tp!65853 () Bool)

(declare-fun b_and!30417 () Bool)

(assert (=> start!82806 (= tp!65853 b_and!30417)))

(declare-fun b!965393 () Bool)

(declare-fun e!544247 () Bool)

(assert (=> b!965393 (= e!544247 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33933 0))(
  ( (V!33934 (val!10907 Int)) )
))
(declare-datatypes ((ValueCell!10375 0))(
  ( (ValueCellFull!10375 (v!13465 V!33933)) (EmptyCell!10375) )
))
(declare-datatypes ((array!59491 0))(
  ( (array!59492 (arr!28610 (Array (_ BitVec 32) ValueCell!10375)) (size!29090 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59491)

(declare-datatypes ((array!59493 0))(
  ( (array!59494 (arr!28611 (Array (_ BitVec 32) (_ BitVec 64))) (size!29091 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59493)

(declare-fun minValue!1342 () V!33933)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33933)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lt!431196 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(declare-datatypes ((tuple2!14102 0))(
  ( (tuple2!14103 (_1!7061 (_ BitVec 64)) (_2!7061 V!33933)) )
))
(declare-datatypes ((List!19981 0))(
  ( (Nil!19978) (Cons!19977 (h!21139 tuple2!14102) (t!28352 List!19981)) )
))
(declare-datatypes ((ListLongMap!12813 0))(
  ( (ListLongMap!12814 (toList!6422 List!19981)) )
))
(declare-fun contains!5476 (ListLongMap!12813 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3607 (array!59493 array!59491 (_ BitVec 32) (_ BitVec 32) V!33933 V!33933 (_ BitVec 32) Int) ListLongMap!12813)

(assert (=> b!965393 (= lt!431196 (contains!5476 (getCurrentListMap!3607 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28611 _keys!1686) i!803)))))

(declare-fun b!965394 () Bool)

(declare-fun res!646325 () Bool)

(assert (=> b!965394 (=> (not res!646325) (not e!544247))))

(assert (=> b!965394 (= res!646325 (and (= (size!29090 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29091 _keys!1686) (size!29090 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965395 () Bool)

(declare-fun e!544246 () Bool)

(declare-fun tp_is_empty!21713 () Bool)

(assert (=> b!965395 (= e!544246 tp_is_empty!21713)))

(declare-fun mapIsEmpty!34564 () Bool)

(declare-fun mapRes!34564 () Bool)

(assert (=> mapIsEmpty!34564 mapRes!34564))

(declare-fun b!965396 () Bool)

(declare-fun res!646320 () Bool)

(assert (=> b!965396 (=> (not res!646320) (not e!544247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965396 (= res!646320 (validKeyInArray!0 (select (arr!28611 _keys!1686) i!803)))))

(declare-fun b!965397 () Bool)

(declare-fun res!646322 () Bool)

(assert (=> b!965397 (=> (not res!646322) (not e!544247))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965397 (= res!646322 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29091 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29091 _keys!1686))))))

(declare-fun mapNonEmpty!34564 () Bool)

(declare-fun tp!65854 () Bool)

(assert (=> mapNonEmpty!34564 (= mapRes!34564 (and tp!65854 e!544246))))

(declare-fun mapValue!34564 () ValueCell!10375)

(declare-fun mapKey!34564 () (_ BitVec 32))

(declare-fun mapRest!34564 () (Array (_ BitVec 32) ValueCell!10375))

(assert (=> mapNonEmpty!34564 (= (arr!28610 _values!1400) (store mapRest!34564 mapKey!34564 mapValue!34564))))

(declare-fun b!965398 () Bool)

(declare-fun e!544245 () Bool)

(assert (=> b!965398 (= e!544245 tp_is_empty!21713)))

(declare-fun b!965399 () Bool)

(declare-fun res!646324 () Bool)

(assert (=> b!965399 (=> (not res!646324) (not e!544247))))

(declare-datatypes ((List!19982 0))(
  ( (Nil!19979) (Cons!19978 (h!21140 (_ BitVec 64)) (t!28353 List!19982)) )
))
(declare-fun arrayNoDuplicates!0 (array!59493 (_ BitVec 32) List!19982) Bool)

(assert (=> b!965399 (= res!646324 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19979))))

(declare-fun res!646321 () Bool)

(assert (=> start!82806 (=> (not res!646321) (not e!544247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82806 (= res!646321 (validMask!0 mask!2110))))

(assert (=> start!82806 e!544247))

(assert (=> start!82806 true))

(declare-fun e!544248 () Bool)

(declare-fun array_inv!22065 (array!59491) Bool)

(assert (=> start!82806 (and (array_inv!22065 _values!1400) e!544248)))

(declare-fun array_inv!22066 (array!59493) Bool)

(assert (=> start!82806 (array_inv!22066 _keys!1686)))

(assert (=> start!82806 tp!65853))

(assert (=> start!82806 tp_is_empty!21713))

(declare-fun b!965400 () Bool)

(assert (=> b!965400 (= e!544248 (and e!544245 mapRes!34564))))

(declare-fun condMapEmpty!34564 () Bool)

(declare-fun mapDefault!34564 () ValueCell!10375)

