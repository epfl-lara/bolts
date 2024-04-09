; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78042 () Bool)

(assert start!78042)

(declare-fun b_free!16541 () Bool)

(declare-fun b_next!16541 () Bool)

(assert (=> start!78042 (= b_free!16541 (not b_next!16541))))

(declare-fun tp!57894 () Bool)

(declare-fun b_and!27131 () Bool)

(assert (=> start!78042 (= tp!57894 b_and!27131)))

(declare-fun mapIsEmpty!30160 () Bool)

(declare-fun mapRes!30160 () Bool)

(assert (=> mapIsEmpty!30160 mapRes!30160))

(declare-fun b!910545 () Bool)

(declare-fun e!510589 () Bool)

(declare-fun tp_is_empty!18959 () Bool)

(assert (=> b!910545 (= e!510589 tp_is_empty!18959)))

(declare-fun b!910546 () Bool)

(declare-fun e!510592 () Bool)

(assert (=> b!910546 (= e!510592 tp_is_empty!18959)))

(declare-fun mapNonEmpty!30160 () Bool)

(declare-fun tp!57895 () Bool)

(assert (=> mapNonEmpty!30160 (= mapRes!30160 (and tp!57895 e!510592))))

(declare-datatypes ((V!30243 0))(
  ( (V!30244 (val!9530 Int)) )
))
(declare-datatypes ((ValueCell!8998 0))(
  ( (ValueCellFull!8998 (v!12039 V!30243)) (EmptyCell!8998) )
))
(declare-datatypes ((array!53930 0))(
  ( (array!53931 (arr!25917 (Array (_ BitVec 32) ValueCell!8998)) (size!26377 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53930)

(declare-fun mapValue!30160 () ValueCell!8998)

(declare-fun mapRest!30160 () (Array (_ BitVec 32) ValueCell!8998))

(declare-fun mapKey!30160 () (_ BitVec 32))

(assert (=> mapNonEmpty!30160 (= (arr!25917 _values!1152) (store mapRest!30160 mapKey!30160 mapValue!30160))))

(declare-fun res!614524 () Bool)

(declare-fun e!510591 () Bool)

(assert (=> start!78042 (=> (not res!614524) (not e!510591))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78042 (= res!614524 (validMask!0 mask!1756))))

(assert (=> start!78042 e!510591))

(declare-fun e!510593 () Bool)

(declare-fun array_inv!20246 (array!53930) Bool)

(assert (=> start!78042 (and (array_inv!20246 _values!1152) e!510593)))

(assert (=> start!78042 tp!57894))

(assert (=> start!78042 true))

(assert (=> start!78042 tp_is_empty!18959))

(declare-datatypes ((array!53932 0))(
  ( (array!53933 (arr!25918 (Array (_ BitVec 32) (_ BitVec 64))) (size!26378 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53932)

(declare-fun array_inv!20247 (array!53932) Bool)

(assert (=> start!78042 (array_inv!20247 _keys!1386)))

(declare-fun b!910547 () Bool)

(assert (=> b!910547 (= e!510591 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30243)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410239 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30243)

(declare-datatypes ((tuple2!12458 0))(
  ( (tuple2!12459 (_1!6239 (_ BitVec 64)) (_2!6239 V!30243)) )
))
(declare-datatypes ((List!18309 0))(
  ( (Nil!18306) (Cons!18305 (h!19451 tuple2!12458) (t!25902 List!18309)) )
))
(declare-datatypes ((ListLongMap!11169 0))(
  ( (ListLongMap!11170 (toList!5600 List!18309)) )
))
(declare-fun contains!4609 (ListLongMap!11169 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2830 (array!53932 array!53930 (_ BitVec 32) (_ BitVec 32) V!30243 V!30243 (_ BitVec 32) Int) ListLongMap!11169)

(assert (=> b!910547 (= lt!410239 (contains!4609 (getCurrentListMap!2830 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!910548 () Bool)

(declare-fun res!614521 () Bool)

(assert (=> b!910548 (=> (not res!614521) (not e!510591))))

(declare-datatypes ((List!18310 0))(
  ( (Nil!18307) (Cons!18306 (h!19452 (_ BitVec 64)) (t!25903 List!18310)) )
))
(declare-fun arrayNoDuplicates!0 (array!53932 (_ BitVec 32) List!18310) Bool)

(assert (=> b!910548 (= res!614521 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18307))))

(declare-fun b!910549 () Bool)

(declare-fun res!614522 () Bool)

(assert (=> b!910549 (=> (not res!614522) (not e!510591))))

(assert (=> b!910549 (= res!614522 (and (= (size!26377 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26378 _keys!1386) (size!26377 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910550 () Bool)

(assert (=> b!910550 (= e!510593 (and e!510589 mapRes!30160))))

(declare-fun condMapEmpty!30160 () Bool)

(declare-fun mapDefault!30160 () ValueCell!8998)

