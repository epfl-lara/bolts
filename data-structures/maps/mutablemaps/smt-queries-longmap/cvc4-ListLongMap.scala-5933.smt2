; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77402 () Bool)

(assert start!77402)

(declare-fun res!608902 () Bool)

(declare-fun e!505174 () Bool)

(assert (=> start!77402 (=> (not res!608902) (not e!505174))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77402 (= res!608902 (validMask!0 mask!1756))))

(assert (=> start!77402 e!505174))

(assert (=> start!77402 true))

(declare-datatypes ((V!29539 0))(
  ( (V!29540 (val!9266 Int)) )
))
(declare-datatypes ((ValueCell!8734 0))(
  ( (ValueCellFull!8734 (v!11770 V!29539)) (EmptyCell!8734) )
))
(declare-datatypes ((array!52910 0))(
  ( (array!52911 (arr!25416 (Array (_ BitVec 32) ValueCell!8734)) (size!25876 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52910)

(declare-fun e!505173 () Bool)

(declare-fun array_inv!19908 (array!52910) Bool)

(assert (=> start!77402 (and (array_inv!19908 _values!1152) e!505173)))

(declare-datatypes ((array!52912 0))(
  ( (array!52913 (arr!25417 (Array (_ BitVec 32) (_ BitVec 64))) (size!25877 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52912)

(declare-fun array_inv!19909 (array!52912) Bool)

(assert (=> start!77402 (array_inv!19909 _keys!1386)))

(declare-fun b!902052 () Bool)

(declare-fun e!505176 () Bool)

(declare-fun tp_is_empty!18431 () Bool)

(assert (=> b!902052 (= e!505176 tp_is_empty!18431)))

(declare-fun mapIsEmpty!29341 () Bool)

(declare-fun mapRes!29341 () Bool)

(assert (=> mapIsEmpty!29341 mapRes!29341))

(declare-fun b!902053 () Bool)

(declare-fun e!505172 () Bool)

(assert (=> b!902053 (= e!505172 tp_is_empty!18431)))

(declare-fun mapNonEmpty!29341 () Bool)

(declare-fun tp!56401 () Bool)

(assert (=> mapNonEmpty!29341 (= mapRes!29341 (and tp!56401 e!505176))))

(declare-fun mapKey!29341 () (_ BitVec 32))

(declare-fun mapValue!29341 () ValueCell!8734)

(declare-fun mapRest!29341 () (Array (_ BitVec 32) ValueCell!8734))

(assert (=> mapNonEmpty!29341 (= (arr!25416 _values!1152) (store mapRest!29341 mapKey!29341 mapValue!29341))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun b!902054 () Bool)

(assert (=> b!902054 (= e!505174 (and (= (size!25876 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25877 _keys!1386) (size!25876 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011) (= (size!25877 _keys!1386) (bvadd #b00000000000000000000000000000001 mask!1756)) (bvsgt #b00000000000000000000000000000000 (size!25877 _keys!1386))))))

(declare-fun b!902055 () Bool)

(assert (=> b!902055 (= e!505173 (and e!505172 mapRes!29341))))

(declare-fun condMapEmpty!29341 () Bool)

(declare-fun mapDefault!29341 () ValueCell!8734)

