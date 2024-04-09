; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108056 () Bool)

(assert start!108056)

(declare-fun b!1275776 () Bool)

(declare-fun e!728428 () Bool)

(declare-fun tp_is_empty!33293 () Bool)

(assert (=> b!1275776 (= e!728428 tp_is_empty!33293)))

(declare-fun res!848003 () Bool)

(declare-fun e!728425 () Bool)

(assert (=> start!108056 (=> (not res!848003) (not e!728425))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108056 (= res!848003 (validMask!0 mask!1805))))

(assert (=> start!108056 e!728425))

(assert (=> start!108056 true))

(declare-datatypes ((V!49493 0))(
  ( (V!49494 (val!16721 Int)) )
))
(declare-datatypes ((ValueCell!15748 0))(
  ( (ValueCellFull!15748 (v!19316 V!49493)) (EmptyCell!15748) )
))
(declare-datatypes ((array!83637 0))(
  ( (array!83638 (arr!40326 (Array (_ BitVec 32) ValueCell!15748)) (size!40877 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83637)

(declare-fun e!728427 () Bool)

(declare-fun array_inv!30603 (array!83637) Bool)

(assert (=> start!108056 (and (array_inv!30603 _values!1187) e!728427)))

(declare-datatypes ((array!83639 0))(
  ( (array!83640 (arr!40327 (Array (_ BitVec 32) (_ BitVec 64))) (size!40878 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83639)

(declare-fun array_inv!30604 (array!83639) Bool)

(assert (=> start!108056 (array_inv!30604 _keys!1427)))

(declare-fun mapNonEmpty!51467 () Bool)

(declare-fun mapRes!51467 () Bool)

(declare-fun tp!98226 () Bool)

(declare-fun e!728426 () Bool)

(assert (=> mapNonEmpty!51467 (= mapRes!51467 (and tp!98226 e!728426))))

(declare-fun mapValue!51467 () ValueCell!15748)

(declare-fun mapKey!51467 () (_ BitVec 32))

(declare-fun mapRest!51467 () (Array (_ BitVec 32) ValueCell!15748))

(assert (=> mapNonEmpty!51467 (= (arr!40326 _values!1187) (store mapRest!51467 mapKey!51467 mapValue!51467))))

(declare-fun b!1275777 () Bool)

(declare-fun res!848002 () Bool)

(assert (=> b!1275777 (=> (not res!848002) (not e!728425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83639 (_ BitVec 32)) Bool)

(assert (=> b!1275777 (= res!848002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapIsEmpty!51467 () Bool)

(assert (=> mapIsEmpty!51467 mapRes!51467))

(declare-fun b!1275778 () Bool)

(assert (=> b!1275778 (= e!728426 tp_is_empty!33293)))

(declare-fun b!1275779 () Bool)

(assert (=> b!1275779 (= e!728427 (and e!728428 mapRes!51467))))

(declare-fun condMapEmpty!51467 () Bool)

(declare-fun mapDefault!51467 () ValueCell!15748)

