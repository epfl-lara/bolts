; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71244 () Bool)

(assert start!71244)

(declare-fun b_free!13367 () Bool)

(declare-fun b_next!13367 () Bool)

(assert (=> start!71244 (= b_free!13367 (not b_next!13367))))

(declare-fun tp!46864 () Bool)

(declare-fun b_and!22323 () Bool)

(assert (=> start!71244 (= tp!46864 b_and!22323)))

(declare-fun res!563908 () Bool)

(declare-fun e!460783 () Bool)

(assert (=> start!71244 (=> (not res!563908) (not e!460783))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71244 (= res!563908 (validMask!0 mask!1312))))

(assert (=> start!71244 e!460783))

(declare-fun tp_is_empty!15077 () Bool)

(assert (=> start!71244 tp_is_empty!15077))

(declare-datatypes ((array!46288 0))(
  ( (array!46289 (arr!22184 (Array (_ BitVec 32) (_ BitVec 64))) (size!22605 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46288)

(declare-fun array_inv!17663 (array!46288) Bool)

(assert (=> start!71244 (array_inv!17663 _keys!976)))

(assert (=> start!71244 true))

(declare-datatypes ((V!25103 0))(
  ( (V!25104 (val!7586 Int)) )
))
(declare-datatypes ((ValueCell!7123 0))(
  ( (ValueCellFull!7123 (v!10017 V!25103)) (EmptyCell!7123) )
))
(declare-datatypes ((array!46290 0))(
  ( (array!46291 (arr!22185 (Array (_ BitVec 32) ValueCell!7123)) (size!22606 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46290)

(declare-fun e!460786 () Bool)

(declare-fun array_inv!17664 (array!46290) Bool)

(assert (=> start!71244 (and (array_inv!17664 _values!788) e!460786)))

(assert (=> start!71244 tp!46864))

(declare-fun b!827143 () Bool)

(declare-fun res!563909 () Bool)

(assert (=> b!827143 (=> (not res!563909) (not e!460783))))

(declare-datatypes ((List!15899 0))(
  ( (Nil!15896) (Cons!15895 (h!17024 (_ BitVec 64)) (t!22256 List!15899)) )
))
(declare-fun arrayNoDuplicates!0 (array!46288 (_ BitVec 32) List!15899) Bool)

(assert (=> b!827143 (= res!563909 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15896))))

(declare-fun b!827144 () Bool)

(declare-fun e!460782 () Bool)

(assert (=> b!827144 (= e!460782 tp_is_empty!15077)))

(declare-fun mapNonEmpty!24244 () Bool)

(declare-fun mapRes!24244 () Bool)

(declare-fun tp!46863 () Bool)

(assert (=> mapNonEmpty!24244 (= mapRes!24244 (and tp!46863 e!460782))))

(declare-fun mapRest!24244 () (Array (_ BitVec 32) ValueCell!7123))

(declare-fun mapKey!24244 () (_ BitVec 32))

(declare-fun mapValue!24244 () ValueCell!7123)

(assert (=> mapNonEmpty!24244 (= (arr!22185 _values!788) (store mapRest!24244 mapKey!24244 mapValue!24244))))

(declare-fun b!827145 () Bool)

(declare-fun res!563910 () Bool)

(assert (=> b!827145 (=> (not res!563910) (not e!460783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46288 (_ BitVec 32)) Bool)

(assert (=> b!827145 (= res!563910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827146 () Bool)

(declare-fun e!460784 () Bool)

(assert (=> b!827146 (= e!460784 tp_is_empty!15077)))

(declare-fun b!827147 () Bool)

(assert (=> b!827147 (= e!460786 (and e!460784 mapRes!24244))))

(declare-fun condMapEmpty!24244 () Bool)

(declare-fun mapDefault!24244 () ValueCell!7123)

