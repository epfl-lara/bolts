; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70480 () Bool)

(assert start!70480)

(declare-fun b_free!12799 () Bool)

(declare-fun b_next!12799 () Bool)

(assert (=> start!70480 (= b_free!12799 (not b_next!12799))))

(declare-fun tp!45127 () Bool)

(declare-fun b_and!21637 () Bool)

(assert (=> start!70480 (= tp!45127 b_and!21637)))

(declare-fun b!818244 () Bool)

(declare-fun res!558559 () Bool)

(declare-fun e!454239 () Bool)

(assert (=> b!818244 (=> (not res!558559) (not e!454239))))

(declare-datatypes ((array!45190 0))(
  ( (array!45191 (arr!21646 (Array (_ BitVec 32) (_ BitVec 64))) (size!22067 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45190)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24347 0))(
  ( (V!24348 (val!7302 Int)) )
))
(declare-datatypes ((ValueCell!6839 0))(
  ( (ValueCellFull!6839 (v!9727 V!24347)) (EmptyCell!6839) )
))
(declare-datatypes ((array!45192 0))(
  ( (array!45193 (arr!21647 (Array (_ BitVec 32) ValueCell!6839)) (size!22068 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45192)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818244 (= res!558559 (and (= (size!22068 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22067 _keys!976) (size!22068 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818245 () Bool)

(declare-fun res!558558 () Bool)

(assert (=> b!818245 (=> (not res!558558) (not e!454239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45190 (_ BitVec 32)) Bool)

(assert (=> b!818245 (= res!558558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818246 () Bool)

(declare-fun e!454242 () Bool)

(declare-fun e!454238 () Bool)

(declare-fun mapRes!23359 () Bool)

(assert (=> b!818246 (= e!454242 (and e!454238 mapRes!23359))))

(declare-fun condMapEmpty!23359 () Bool)

(declare-fun mapDefault!23359 () ValueCell!6839)

