; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70460 () Bool)

(assert start!70460)

(declare-fun b_free!12779 () Bool)

(declare-fun b_next!12779 () Bool)

(assert (=> start!70460 (= b_free!12779 (not b_next!12779))))

(declare-fun tp!45066 () Bool)

(declare-fun b_and!21617 () Bool)

(assert (=> start!70460 (= tp!45066 b_and!21617)))

(declare-fun b!818004 () Bool)

(declare-fun res!558405 () Bool)

(declare-fun e!454057 () Bool)

(assert (=> b!818004 (=> (not res!558405) (not e!454057))))

(declare-datatypes ((array!45152 0))(
  ( (array!45153 (arr!21627 (Array (_ BitVec 32) (_ BitVec 64))) (size!22048 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45152)

(declare-datatypes ((List!15463 0))(
  ( (Nil!15460) (Cons!15459 (h!16588 (_ BitVec 64)) (t!21798 List!15463)) )
))
(declare-fun arrayNoDuplicates!0 (array!45152 (_ BitVec 32) List!15463) Bool)

(assert (=> b!818004 (= res!558405 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15460))))

(declare-fun b!818005 () Bool)

(declare-fun res!558407 () Bool)

(assert (=> b!818005 (=> (not res!558407) (not e!454057))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45152 (_ BitVec 32)) Bool)

(assert (=> b!818005 (= res!558407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23329 () Bool)

(declare-fun mapRes!23329 () Bool)

(assert (=> mapIsEmpty!23329 mapRes!23329))

(declare-fun b!818006 () Bool)

(declare-fun res!558408 () Bool)

(assert (=> b!818006 (=> (not res!558408) (not e!454057))))

(declare-datatypes ((V!24319 0))(
  ( (V!24320 (val!7292 Int)) )
))
(declare-datatypes ((ValueCell!6829 0))(
  ( (ValueCellFull!6829 (v!9717 V!24319)) (EmptyCell!6829) )
))
(declare-datatypes ((array!45154 0))(
  ( (array!45155 (arr!21628 (Array (_ BitVec 32) ValueCell!6829)) (size!22049 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45154)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818006 (= res!558408 (and (= (size!22049 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22048 _keys!976) (size!22049 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818007 () Bool)

(declare-fun e!454059 () Bool)

(declare-fun tp_is_empty!14489 () Bool)

(assert (=> b!818007 (= e!454059 tp_is_empty!14489)))

(declare-fun mapNonEmpty!23329 () Bool)

(declare-fun tp!45067 () Bool)

(declare-fun e!454062 () Bool)

(assert (=> mapNonEmpty!23329 (= mapRes!23329 (and tp!45067 e!454062))))

(declare-fun mapValue!23329 () ValueCell!6829)

(declare-fun mapRest!23329 () (Array (_ BitVec 32) ValueCell!6829))

(declare-fun mapKey!23329 () (_ BitVec 32))

(assert (=> mapNonEmpty!23329 (= (arr!21628 _values!788) (store mapRest!23329 mapKey!23329 mapValue!23329))))

(declare-fun b!818008 () Bool)

(declare-fun e!454058 () Bool)

(assert (=> b!818008 (= e!454058 (and e!454059 mapRes!23329))))

(declare-fun condMapEmpty!23329 () Bool)

(declare-fun mapDefault!23329 () ValueCell!6829)

