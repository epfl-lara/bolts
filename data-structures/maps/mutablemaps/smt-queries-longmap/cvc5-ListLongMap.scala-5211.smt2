; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70322 () Bool)

(assert start!70322)

(declare-fun b_free!12673 () Bool)

(declare-fun b_next!12673 () Bool)

(assert (=> start!70322 (= b_free!12673 (not b_next!12673))))

(declare-fun tp!44743 () Bool)

(declare-fun b_and!21491 () Bool)

(assert (=> start!70322 (= tp!44743 b_and!21491)))

(declare-fun b!816544 () Bool)

(declare-fun e!453024 () Bool)

(declare-fun tp_is_empty!14383 () Bool)

(assert (=> b!816544 (= e!453024 tp_is_empty!14383)))

(declare-fun b!816545 () Bool)

(declare-fun res!557582 () Bool)

(declare-fun e!453022 () Bool)

(assert (=> b!816545 (=> (not res!557582) (not e!453022))))

(declare-datatypes ((array!44944 0))(
  ( (array!44945 (arr!21525 (Array (_ BitVec 32) (_ BitVec 64))) (size!21946 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44944)

(declare-datatypes ((List!15385 0))(
  ( (Nil!15382) (Cons!15381 (h!16510 (_ BitVec 64)) (t!21716 List!15385)) )
))
(declare-fun arrayNoDuplicates!0 (array!44944 (_ BitVec 32) List!15385) Bool)

(assert (=> b!816545 (= res!557582 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15382))))

(declare-fun res!557578 () Bool)

(assert (=> start!70322 (=> (not res!557578) (not e!453022))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70322 (= res!557578 (validMask!0 mask!1312))))

(assert (=> start!70322 e!453022))

(assert (=> start!70322 tp_is_empty!14383))

(declare-fun array_inv!17195 (array!44944) Bool)

(assert (=> start!70322 (array_inv!17195 _keys!976)))

(assert (=> start!70322 true))

(declare-datatypes ((V!24179 0))(
  ( (V!24180 (val!7239 Int)) )
))
(declare-datatypes ((ValueCell!6776 0))(
  ( (ValueCellFull!6776 (v!9663 V!24179)) (EmptyCell!6776) )
))
(declare-datatypes ((array!44946 0))(
  ( (array!44947 (arr!21526 (Array (_ BitVec 32) ValueCell!6776)) (size!21947 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44946)

(declare-fun e!453023 () Bool)

(declare-fun array_inv!17196 (array!44946) Bool)

(assert (=> start!70322 (and (array_inv!17196 _values!788) e!453023)))

(assert (=> start!70322 tp!44743))

(declare-fun b!816546 () Bool)

(declare-fun e!453019 () Bool)

(assert (=> b!816546 (= e!453019 true)))

(declare-fun minValue!754 () V!24179)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((tuple2!9514 0))(
  ( (tuple2!9515 (_1!4767 (_ BitVec 64)) (_2!4767 V!24179)) )
))
(declare-datatypes ((List!15386 0))(
  ( (Nil!15383) (Cons!15382 (h!16511 tuple2!9514) (t!21717 List!15386)) )
))
(declare-datatypes ((ListLongMap!8351 0))(
  ( (ListLongMap!8352 (toList!4191 List!15386)) )
))
(declare-fun lt!365787 () ListLongMap!8351)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24179)

(declare-fun getCurrentListMap!2377 (array!44944 array!44946 (_ BitVec 32) (_ BitVec 32) V!24179 V!24179 (_ BitVec 32) Int) ListLongMap!8351)

(assert (=> b!816546 (= lt!365787 (getCurrentListMap!2377 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24179)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!365785 () ListLongMap!8351)

(declare-fun +!1776 (ListLongMap!8351 tuple2!9514) ListLongMap!8351)

(assert (=> b!816546 (= lt!365785 (+!1776 (getCurrentListMap!2377 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9515 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!816547 () Bool)

(declare-fun mapRes!23164 () Bool)

(assert (=> b!816547 (= e!453023 (and e!453024 mapRes!23164))))

(declare-fun condMapEmpty!23164 () Bool)

(declare-fun mapDefault!23164 () ValueCell!6776)

