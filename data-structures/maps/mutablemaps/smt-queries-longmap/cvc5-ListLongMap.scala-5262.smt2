; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70730 () Bool)

(assert start!70730)

(declare-fun b_free!12979 () Bool)

(declare-fun b_next!12979 () Bool)

(assert (=> start!70730 (= b_free!12979 (not b_next!12979))))

(declare-fun tp!45678 () Bool)

(declare-fun b_and!21859 () Bool)

(assert (=> start!70730 (= tp!45678 b_and!21859)))

(declare-fun b!821106 () Bool)

(declare-fun res!560262 () Bool)

(declare-fun e!456335 () Bool)

(assert (=> b!821106 (=> (not res!560262) (not e!456335))))

(declare-datatypes ((array!45536 0))(
  ( (array!45537 (arr!21815 (Array (_ BitVec 32) (_ BitVec 64))) (size!22236 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45536)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24587 0))(
  ( (V!24588 (val!7392 Int)) )
))
(declare-datatypes ((ValueCell!6929 0))(
  ( (ValueCellFull!6929 (v!9819 V!24587)) (EmptyCell!6929) )
))
(declare-datatypes ((array!45538 0))(
  ( (array!45539 (arr!21816 (Array (_ BitVec 32) ValueCell!6929)) (size!22237 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45538)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821106 (= res!560262 (and (= (size!22237 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22236 _keys!976) (size!22237 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821107 () Bool)

(declare-fun e!456339 () Bool)

(declare-fun e!456337 () Bool)

(declare-fun mapRes!23641 () Bool)

(assert (=> b!821107 (= e!456339 (and e!456337 mapRes!23641))))

(declare-fun condMapEmpty!23641 () Bool)

(declare-fun mapDefault!23641 () ValueCell!6929)

