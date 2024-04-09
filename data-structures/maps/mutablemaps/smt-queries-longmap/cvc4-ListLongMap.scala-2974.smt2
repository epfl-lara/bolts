; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42132 () Bool)

(assert start!42132)

(declare-fun b_free!11657 () Bool)

(declare-fun b_next!11657 () Bool)

(assert (=> start!42132 (= b_free!11657 (not b_next!11657))))

(declare-fun tp!40993 () Bool)

(declare-fun b_and!20097 () Bool)

(assert (=> start!42132 (= tp!40993 b_and!20097)))

(declare-fun b!470084 () Bool)

(declare-fun e!275376 () Bool)

(declare-fun tp_is_empty!13085 () Bool)

(assert (=> b!470084 (= e!275376 tp_is_empty!13085)))

(declare-fun b!470085 () Bool)

(declare-fun res!280963 () Bool)

(declare-fun e!275374 () Bool)

(assert (=> b!470085 (=> (not res!280963) (not e!275374))))

(declare-datatypes ((array!29903 0))(
  ( (array!29904 (arr!14372 (Array (_ BitVec 32) (_ BitVec 64))) (size!14724 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29903)

(declare-datatypes ((List!8766 0))(
  ( (Nil!8763) (Cons!8762 (h!9618 (_ BitVec 64)) (t!14736 List!8766)) )
))
(declare-fun arrayNoDuplicates!0 (array!29903 (_ BitVec 32) List!8766) Bool)

(assert (=> b!470085 (= res!280963 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8763))))

(declare-fun b!470086 () Bool)

(declare-fun res!280962 () Bool)

(assert (=> b!470086 (=> (not res!280962) (not e!275374))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29903 (_ BitVec 32)) Bool)

(assert (=> b!470086 (= res!280962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21328 () Bool)

(declare-fun mapRes!21328 () Bool)

(declare-fun tp!40992 () Bool)

(assert (=> mapNonEmpty!21328 (= mapRes!21328 (and tp!40992 e!275376))))

(declare-datatypes ((V!18551 0))(
  ( (V!18552 (val!6587 Int)) )
))
(declare-datatypes ((ValueCell!6199 0))(
  ( (ValueCellFull!6199 (v!8874 V!18551)) (EmptyCell!6199) )
))
(declare-datatypes ((array!29905 0))(
  ( (array!29906 (arr!14373 (Array (_ BitVec 32) ValueCell!6199)) (size!14725 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29905)

(declare-fun mapKey!21328 () (_ BitVec 32))

(declare-fun mapValue!21328 () ValueCell!6199)

(declare-fun mapRest!21328 () (Array (_ BitVec 32) ValueCell!6199))

(assert (=> mapNonEmpty!21328 (= (arr!14373 _values!833) (store mapRest!21328 mapKey!21328 mapValue!21328))))

(declare-fun mapIsEmpty!21328 () Bool)

(assert (=> mapIsEmpty!21328 mapRes!21328))

(declare-fun b!470087 () Bool)

(declare-fun res!280964 () Bool)

(assert (=> b!470087 (=> (not res!280964) (not e!275374))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!470087 (= res!280964 (and (= (size!14725 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14724 _keys!1025) (size!14725 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!280965 () Bool)

(assert (=> start!42132 (=> (not res!280965) (not e!275374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42132 (= res!280965 (validMask!0 mask!1365))))

(assert (=> start!42132 e!275374))

(assert (=> start!42132 tp_is_empty!13085))

(assert (=> start!42132 tp!40993))

(assert (=> start!42132 true))

(declare-fun array_inv!10366 (array!29903) Bool)

(assert (=> start!42132 (array_inv!10366 _keys!1025)))

(declare-fun e!275377 () Bool)

(declare-fun array_inv!10367 (array!29905) Bool)

(assert (=> start!42132 (and (array_inv!10367 _values!833) e!275377)))

(declare-fun b!470088 () Bool)

(declare-fun e!275378 () Bool)

(assert (=> b!470088 (= e!275377 (and e!275378 mapRes!21328))))

(declare-fun condMapEmpty!21328 () Bool)

(declare-fun mapDefault!21328 () ValueCell!6199)

