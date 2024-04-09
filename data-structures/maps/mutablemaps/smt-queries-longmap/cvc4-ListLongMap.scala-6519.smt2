; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82986 () Bool)

(assert start!82986)

(declare-fun b_free!19085 () Bool)

(declare-fun b_next!19085 () Bool)

(assert (=> start!82986 (= b_free!19085 (not b_next!19085))))

(declare-fun tp!66384 () Bool)

(declare-fun b_and!30591 () Bool)

(assert (=> start!82986 (= tp!66384 b_and!30591)))

(declare-fun b!968108 () Bool)

(declare-fun res!648227 () Bool)

(declare-fun e!545616 () Bool)

(assert (=> b!968108 (=> (not res!648227) (not e!545616))))

(declare-datatypes ((array!59837 0))(
  ( (array!59838 (arr!28783 (Array (_ BitVec 32) (_ BitVec 64))) (size!29263 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59837)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!968108 (= res!648227 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29263 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29263 _keys!1686))))))

(declare-fun mapNonEmpty!34834 () Bool)

(declare-fun mapRes!34834 () Bool)

(declare-fun tp!66385 () Bool)

(declare-fun e!545617 () Bool)

(assert (=> mapNonEmpty!34834 (= mapRes!34834 (and tp!66385 e!545617))))

(declare-datatypes ((V!34173 0))(
  ( (V!34174 (val!10997 Int)) )
))
(declare-datatypes ((ValueCell!10465 0))(
  ( (ValueCellFull!10465 (v!13555 V!34173)) (EmptyCell!10465) )
))
(declare-datatypes ((array!59839 0))(
  ( (array!59840 (arr!28784 (Array (_ BitVec 32) ValueCell!10465)) (size!29264 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59839)

(declare-fun mapValue!34834 () ValueCell!10465)

(declare-fun mapRest!34834 () (Array (_ BitVec 32) ValueCell!10465))

(declare-fun mapKey!34834 () (_ BitVec 32))

(assert (=> mapNonEmpty!34834 (= (arr!28784 _values!1400) (store mapRest!34834 mapKey!34834 mapValue!34834))))

(declare-fun b!968109 () Bool)

(declare-fun res!648229 () Bool)

(assert (=> b!968109 (=> (not res!648229) (not e!545616))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!968109 (= res!648229 (and (= (size!29264 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29263 _keys!1686) (size!29264 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!968110 () Bool)

(declare-fun res!648226 () Bool)

(assert (=> b!968110 (=> (not res!648226) (not e!545616))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968110 (= res!648226 (validKeyInArray!0 (select (arr!28783 _keys!1686) i!803)))))

(declare-fun b!968111 () Bool)

(declare-fun e!545615 () Bool)

(declare-fun e!545613 () Bool)

(assert (=> b!968111 (= e!545615 (and e!545613 mapRes!34834))))

(declare-fun condMapEmpty!34834 () Bool)

(declare-fun mapDefault!34834 () ValueCell!10465)

