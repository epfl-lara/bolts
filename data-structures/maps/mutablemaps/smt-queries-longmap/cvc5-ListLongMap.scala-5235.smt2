; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70514 () Bool)

(assert start!70514)

(declare-fun b_free!12817 () Bool)

(declare-fun b_next!12817 () Bool)

(assert (=> start!70514 (= b_free!12817 (not b_next!12817))))

(declare-fun tp!45183 () Bool)

(declare-fun b_and!21665 () Bool)

(assert (=> start!70514 (= tp!45183 b_and!21665)))

(declare-fun mapIsEmpty!23389 () Bool)

(declare-fun mapRes!23389 () Bool)

(assert (=> mapIsEmpty!23389 mapRes!23389))

(declare-fun b!818628 () Bool)

(declare-fun res!558771 () Bool)

(declare-fun e!454513 () Bool)

(assert (=> b!818628 (=> (not res!558771) (not e!454513))))

(declare-datatypes ((array!45226 0))(
  ( (array!45227 (arr!21663 (Array (_ BitVec 32) (_ BitVec 64))) (size!22084 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45226)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45226 (_ BitVec 32)) Bool)

(assert (=> b!818628 (= res!558771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818629 () Bool)

(declare-fun e!454515 () Bool)

(assert (=> b!818629 (= e!454513 (not e!454515))))

(declare-fun res!558773 () Bool)

(assert (=> b!818629 (=> res!558773 e!454515)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818629 (= res!558773 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24371 0))(
  ( (V!24372 (val!7311 Int)) )
))
(declare-datatypes ((tuple2!9624 0))(
  ( (tuple2!9625 (_1!4822 (_ BitVec 64)) (_2!4822 V!24371)) )
))
(declare-datatypes ((List!15487 0))(
  ( (Nil!15484) (Cons!15483 (h!16612 tuple2!9624) (t!21824 List!15487)) )
))
(declare-datatypes ((ListLongMap!8461 0))(
  ( (ListLongMap!8462 (toList!4246 List!15487)) )
))
(declare-fun lt!366993 () ListLongMap!8461)

(declare-fun lt!366990 () ListLongMap!8461)

(assert (=> b!818629 (= lt!366993 lt!366990)))

(declare-datatypes ((Unit!27941 0))(
  ( (Unit!27942) )
))
(declare-fun lt!366994 () Unit!27941)

(declare-fun zeroValueBefore!34 () V!24371)

(declare-fun zeroValueAfter!34 () V!24371)

(declare-fun minValue!754 () V!24371)

(declare-datatypes ((ValueCell!6848 0))(
  ( (ValueCellFull!6848 (v!9736 V!24371)) (EmptyCell!6848) )
))
(declare-datatypes ((array!45228 0))(
  ( (array!45229 (arr!21664 (Array (_ BitVec 32) ValueCell!6848)) (size!22085 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45228)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!404 (array!45226 array!45228 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24371 V!24371 V!24371 V!24371 (_ BitVec 32) Int) Unit!27941)

(assert (=> b!818629 (= lt!366994 (lemmaNoChangeToArrayThenSameMapNoExtras!404 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2288 (array!45226 array!45228 (_ BitVec 32) (_ BitVec 32) V!24371 V!24371 (_ BitVec 32) Int) ListLongMap!8461)

(assert (=> b!818629 (= lt!366990 (getCurrentListMapNoExtraKeys!2288 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818629 (= lt!366993 (getCurrentListMapNoExtraKeys!2288 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818630 () Bool)

(declare-fun res!558769 () Bool)

(assert (=> b!818630 (=> (not res!558769) (not e!454513))))

(assert (=> b!818630 (= res!558769 (and (= (size!22085 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22084 _keys!976) (size!22085 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818632 () Bool)

(declare-fun e!454517 () Bool)

(declare-fun e!454516 () Bool)

(assert (=> b!818632 (= e!454517 (and e!454516 mapRes!23389))))

(declare-fun condMapEmpty!23389 () Bool)

(declare-fun mapDefault!23389 () ValueCell!6848)

