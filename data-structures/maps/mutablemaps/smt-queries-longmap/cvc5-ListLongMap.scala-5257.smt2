; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70686 () Bool)

(assert start!70686)

(declare-fun b_free!12949 () Bool)

(declare-fun b_next!12949 () Bool)

(assert (=> start!70686 (= b_free!12949 (not b_next!12949))))

(declare-fun tp!45586 () Bool)

(declare-fun b_and!21821 () Bool)

(assert (=> start!70686 (= tp!45586 b_and!21821)))

(declare-fun mapIsEmpty!23593 () Bool)

(declare-fun mapRes!23593 () Bool)

(assert (=> mapIsEmpty!23593 mapRes!23593))

(declare-fun b!820686 () Bool)

(declare-fun res!560030 () Bool)

(declare-fun e!456039 () Bool)

(assert (=> b!820686 (=> (not res!560030) (not e!456039))))

(declare-datatypes ((array!45480 0))(
  ( (array!45481 (arr!21788 (Array (_ BitVec 32) (_ BitVec 64))) (size!22209 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45480)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24547 0))(
  ( (V!24548 (val!7377 Int)) )
))
(declare-datatypes ((ValueCell!6914 0))(
  ( (ValueCellFull!6914 (v!9804 V!24547)) (EmptyCell!6914) )
))
(declare-datatypes ((array!45482 0))(
  ( (array!45483 (arr!21789 (Array (_ BitVec 32) ValueCell!6914)) (size!22210 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45482)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!820686 (= res!560030 (and (= (size!22210 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22209 _keys!976) (size!22210 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820687 () Bool)

(declare-fun e!456035 () Bool)

(declare-fun tp_is_empty!14659 () Bool)

(assert (=> b!820687 (= e!456035 tp_is_empty!14659)))

(declare-fun b!820688 () Bool)

(declare-fun e!456037 () Bool)

(assert (=> b!820688 (= e!456037 tp_is_empty!14659)))

(declare-fun b!820689 () Bool)

(declare-fun e!456038 () Bool)

(assert (=> b!820689 (= e!456038 (and e!456037 mapRes!23593))))

(declare-fun condMapEmpty!23593 () Bool)

(declare-fun mapDefault!23593 () ValueCell!6914)

