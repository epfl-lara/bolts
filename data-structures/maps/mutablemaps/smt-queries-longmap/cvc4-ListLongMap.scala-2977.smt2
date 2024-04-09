; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42150 () Bool)

(assert start!42150)

(declare-fun b_free!11675 () Bool)

(declare-fun b_next!11675 () Bool)

(assert (=> start!42150 (= b_free!11675 (not b_next!11675))))

(declare-fun tp!41046 () Bool)

(declare-fun b_and!20115 () Bool)

(assert (=> start!42150 (= tp!41046 b_and!20115)))

(declare-fun mapNonEmpty!21355 () Bool)

(declare-fun mapRes!21355 () Bool)

(declare-fun tp!41047 () Bool)

(declare-fun e!275510 () Bool)

(assert (=> mapNonEmpty!21355 (= mapRes!21355 (and tp!41047 e!275510))))

(declare-datatypes ((V!18575 0))(
  ( (V!18576 (val!6596 Int)) )
))
(declare-datatypes ((ValueCell!6208 0))(
  ( (ValueCellFull!6208 (v!8883 V!18575)) (EmptyCell!6208) )
))
(declare-datatypes ((array!29937 0))(
  ( (array!29938 (arr!14389 (Array (_ BitVec 32) ValueCell!6208)) (size!14741 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29937)

(declare-fun mapKey!21355 () (_ BitVec 32))

(declare-fun mapRest!21355 () (Array (_ BitVec 32) ValueCell!6208))

(declare-fun mapValue!21355 () ValueCell!6208)

(assert (=> mapNonEmpty!21355 (= (arr!14389 _values!833) (store mapRest!21355 mapKey!21355 mapValue!21355))))

(declare-fun res!281073 () Bool)

(declare-fun e!275512 () Bool)

(assert (=> start!42150 (=> (not res!281073) (not e!275512))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42150 (= res!281073 (validMask!0 mask!1365))))

(assert (=> start!42150 e!275512))

(declare-fun tp_is_empty!13103 () Bool)

(assert (=> start!42150 tp_is_empty!13103))

(assert (=> start!42150 tp!41046))

(assert (=> start!42150 true))

(declare-datatypes ((array!29939 0))(
  ( (array!29940 (arr!14390 (Array (_ BitVec 32) (_ BitVec 64))) (size!14742 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29939)

(declare-fun array_inv!10382 (array!29939) Bool)

(assert (=> start!42150 (array_inv!10382 _keys!1025)))

(declare-fun e!275509 () Bool)

(declare-fun array_inv!10383 (array!29937) Bool)

(assert (=> start!42150 (and (array_inv!10383 _values!833) e!275509)))

(declare-fun b!470273 () Bool)

(declare-fun res!281071 () Bool)

(assert (=> b!470273 (=> (not res!281071) (not e!275512))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!470273 (= res!281071 (and (= (size!14741 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14742 _keys!1025) (size!14741 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470274 () Bool)

(declare-fun e!275511 () Bool)

(assert (=> b!470274 (= e!275511 tp_is_empty!13103)))

(declare-fun b!470275 () Bool)

(assert (=> b!470275 (= e!275509 (and e!275511 mapRes!21355))))

(declare-fun condMapEmpty!21355 () Bool)

(declare-fun mapDefault!21355 () ValueCell!6208)

