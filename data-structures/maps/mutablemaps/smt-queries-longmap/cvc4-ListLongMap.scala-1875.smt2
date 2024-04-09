; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33696 () Bool)

(assert start!33696)

(declare-fun b_free!6923 () Bool)

(declare-fun b_next!6923 () Bool)

(assert (=> start!33696 (= b_free!6923 (not b_next!6923))))

(declare-fun tp!24272 () Bool)

(declare-fun b_and!14121 () Bool)

(assert (=> start!33696 (= tp!24272 b_and!14121)))

(declare-fun res!184546 () Bool)

(declare-fun e!205347 () Bool)

(assert (=> start!33696 (=> (not res!184546) (not e!205347))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33696 (= res!184546 (validMask!0 mask!2385))))

(assert (=> start!33696 e!205347))

(assert (=> start!33696 true))

(declare-fun tp_is_empty!6875 () Bool)

(assert (=> start!33696 tp_is_empty!6875))

(assert (=> start!33696 tp!24272))

(declare-datatypes ((V!10143 0))(
  ( (V!10144 (val!3482 Int)) )
))
(declare-datatypes ((ValueCell!3094 0))(
  ( (ValueCellFull!3094 (v!5640 V!10143)) (EmptyCell!3094) )
))
(declare-datatypes ((array!17335 0))(
  ( (array!17336 (arr!8195 (Array (_ BitVec 32) ValueCell!3094)) (size!8547 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17335)

(declare-fun e!205349 () Bool)

(declare-fun array_inv!6082 (array!17335) Bool)

(assert (=> start!33696 (and (array_inv!6082 _values!1525) e!205349)))

(declare-datatypes ((array!17337 0))(
  ( (array!17338 (arr!8196 (Array (_ BitVec 32) (_ BitVec 64))) (size!8548 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17337)

(declare-fun array_inv!6083 (array!17337) Bool)

(assert (=> start!33696 (array_inv!6083 _keys!1895)))

(declare-fun mapNonEmpty!11709 () Bool)

(declare-fun mapRes!11709 () Bool)

(declare-fun tp!24273 () Bool)

(declare-fun e!205348 () Bool)

(assert (=> mapNonEmpty!11709 (= mapRes!11709 (and tp!24273 e!205348))))

(declare-fun mapValue!11709 () ValueCell!3094)

(declare-fun mapRest!11709 () (Array (_ BitVec 32) ValueCell!3094))

(declare-fun mapKey!11709 () (_ BitVec 32))

(assert (=> mapNonEmpty!11709 (= (arr!8195 _values!1525) (store mapRest!11709 mapKey!11709 mapValue!11709))))

(declare-fun b!334531 () Bool)

(declare-fun res!184544 () Bool)

(assert (=> b!334531 (=> (not res!184544) (not e!205347))))

(declare-datatypes ((List!4701 0))(
  ( (Nil!4698) (Cons!4697 (h!5553 (_ BitVec 64)) (t!9797 List!4701)) )
))
(declare-fun arrayNoDuplicates!0 (array!17337 (_ BitVec 32) List!4701) Bool)

(assert (=> b!334531 (= res!184544 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4698))))

(declare-fun b!334532 () Bool)

(declare-fun res!184545 () Bool)

(assert (=> b!334532 (=> (not res!184545) (not e!205347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17337 (_ BitVec 32)) Bool)

(assert (=> b!334532 (= res!184545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334533 () Bool)

(assert (=> b!334533 (= e!205348 tp_is_empty!6875)))

(declare-fun mapIsEmpty!11709 () Bool)

(assert (=> mapIsEmpty!11709 mapRes!11709))

(declare-fun b!334534 () Bool)

(declare-fun e!205346 () Bool)

(assert (=> b!334534 (= e!205349 (and e!205346 mapRes!11709))))

(declare-fun condMapEmpty!11709 () Bool)

(declare-fun mapDefault!11709 () ValueCell!3094)

