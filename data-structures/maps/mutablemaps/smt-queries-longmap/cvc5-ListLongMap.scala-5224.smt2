; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70432 () Bool)

(assert start!70432)

(declare-fun b_free!12751 () Bool)

(declare-fun b_next!12751 () Bool)

(assert (=> start!70432 (= b_free!12751 (not b_next!12751))))

(declare-fun tp!44983 () Bool)

(declare-fun b_and!21589 () Bool)

(assert (=> start!70432 (= tp!44983 b_and!21589)))

(declare-fun res!558199 () Bool)

(declare-fun e!453808 () Bool)

(assert (=> start!70432 (=> (not res!558199) (not e!453808))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70432 (= res!558199 (validMask!0 mask!1312))))

(assert (=> start!70432 e!453808))

(declare-fun tp_is_empty!14461 () Bool)

(assert (=> start!70432 tp_is_empty!14461))

(declare-datatypes ((array!45098 0))(
  ( (array!45099 (arr!21600 (Array (_ BitVec 32) (_ BitVec 64))) (size!22021 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45098)

(declare-fun array_inv!17251 (array!45098) Bool)

(assert (=> start!70432 (array_inv!17251 _keys!976)))

(assert (=> start!70432 true))

(declare-datatypes ((V!24283 0))(
  ( (V!24284 (val!7278 Int)) )
))
(declare-datatypes ((ValueCell!6815 0))(
  ( (ValueCellFull!6815 (v!9703 V!24283)) (EmptyCell!6815) )
))
(declare-datatypes ((array!45100 0))(
  ( (array!45101 (arr!21601 (Array (_ BitVec 32) ValueCell!6815)) (size!22022 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45100)

(declare-fun e!453809 () Bool)

(declare-fun array_inv!17252 (array!45100) Bool)

(assert (=> start!70432 (and (array_inv!17252 _values!788) e!453809)))

(assert (=> start!70432 tp!44983))

(declare-fun mapIsEmpty!23287 () Bool)

(declare-fun mapRes!23287 () Bool)

(assert (=> mapIsEmpty!23287 mapRes!23287))

(declare-fun b!817668 () Bool)

(declare-fun e!453806 () Bool)

(assert (=> b!817668 (= e!453806 tp_is_empty!14461)))

(declare-fun b!817669 () Bool)

(declare-fun res!558195 () Bool)

(assert (=> b!817669 (=> (not res!558195) (not e!453808))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817669 (= res!558195 (and (= (size!22022 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22021 _keys!976) (size!22022 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817670 () Bool)

(declare-fun e!453810 () Bool)

(assert (=> b!817670 (= e!453810 true)))

(declare-fun zeroValueBefore!34 () V!24283)

(declare-fun minValue!754 () V!24283)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9572 0))(
  ( (tuple2!9573 (_1!4796 (_ BitVec 64)) (_2!4796 V!24283)) )
))
(declare-datatypes ((List!15441 0))(
  ( (Nil!15438) (Cons!15437 (h!16566 tuple2!9572) (t!21776 List!15441)) )
))
(declare-datatypes ((ListLongMap!8409 0))(
  ( (ListLongMap!8410 (toList!4220 List!15441)) )
))
(declare-fun lt!366369 () ListLongMap!8409)

(declare-fun getCurrentListMap!2385 (array!45098 array!45100 (_ BitVec 32) (_ BitVec 32) V!24283 V!24283 (_ BitVec 32) Int) ListLongMap!8409)

(assert (=> b!817670 (= lt!366369 (getCurrentListMap!2385 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817671 () Bool)

(declare-fun res!558198 () Bool)

(assert (=> b!817671 (=> (not res!558198) (not e!453808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45098 (_ BitVec 32)) Bool)

(assert (=> b!817671 (= res!558198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817672 () Bool)

(declare-fun e!453805 () Bool)

(assert (=> b!817672 (= e!453805 tp_is_empty!14461)))

(declare-fun b!817673 () Bool)

(assert (=> b!817673 (= e!453809 (and e!453805 mapRes!23287))))

(declare-fun condMapEmpty!23287 () Bool)

(declare-fun mapDefault!23287 () ValueCell!6815)

