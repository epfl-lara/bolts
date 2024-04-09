; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78054 () Bool)

(assert start!78054)

(declare-fun b_free!16553 () Bool)

(declare-fun b_next!16553 () Bool)

(assert (=> start!78054 (= b_free!16553 (not b_next!16553))))

(declare-fun tp!57931 () Bool)

(declare-fun b_and!27143 () Bool)

(assert (=> start!78054 (= tp!57931 b_and!27143)))

(declare-fun res!614595 () Bool)

(declare-fun e!510680 () Bool)

(assert (=> start!78054 (=> (not res!614595) (not e!510680))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78054 (= res!614595 (validMask!0 mask!1756))))

(assert (=> start!78054 e!510680))

(declare-datatypes ((V!30259 0))(
  ( (V!30260 (val!9536 Int)) )
))
(declare-datatypes ((ValueCell!9004 0))(
  ( (ValueCellFull!9004 (v!12045 V!30259)) (EmptyCell!9004) )
))
(declare-datatypes ((array!53952 0))(
  ( (array!53953 (arr!25928 (Array (_ BitVec 32) ValueCell!9004)) (size!26388 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53952)

(declare-fun e!510682 () Bool)

(declare-fun array_inv!20254 (array!53952) Bool)

(assert (=> start!78054 (and (array_inv!20254 _values!1152) e!510682)))

(assert (=> start!78054 tp!57931))

(assert (=> start!78054 true))

(declare-fun tp_is_empty!18971 () Bool)

(assert (=> start!78054 tp_is_empty!18971))

(declare-datatypes ((array!53954 0))(
  ( (array!53955 (arr!25929 (Array (_ BitVec 32) (_ BitVec 64))) (size!26389 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53954)

(declare-fun array_inv!20255 (array!53954) Bool)

(assert (=> start!78054 (array_inv!20255 _keys!1386)))

(declare-fun b!910671 () Bool)

(declare-fun e!510681 () Bool)

(assert (=> b!910671 (= e!510681 tp_is_empty!18971)))

(declare-fun b!910672 () Bool)

(declare-fun res!614593 () Bool)

(assert (=> b!910672 (=> (not res!614593) (not e!510680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53954 (_ BitVec 32)) Bool)

(assert (=> b!910672 (= res!614593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30178 () Bool)

(declare-fun mapRes!30178 () Bool)

(assert (=> mapIsEmpty!30178 mapRes!30178))

(declare-fun b!910673 () Bool)

(declare-fun e!510683 () Bool)

(assert (=> b!910673 (= e!510683 tp_is_empty!18971)))

(declare-fun b!910674 () Bool)

(declare-fun res!614596 () Bool)

(assert (=> b!910674 (=> (not res!614596) (not e!510680))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910674 (= res!614596 (and (= (size!26388 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26389 _keys!1386) (size!26388 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910675 () Bool)

(declare-fun res!614594 () Bool)

(assert (=> b!910675 (=> (not res!614594) (not e!510680))))

(declare-datatypes ((List!18318 0))(
  ( (Nil!18315) (Cons!18314 (h!19460 (_ BitVec 64)) (t!25911 List!18318)) )
))
(declare-fun arrayNoDuplicates!0 (array!53954 (_ BitVec 32) List!18318) Bool)

(assert (=> b!910675 (= res!614594 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18315))))

(declare-fun b!910676 () Bool)

(assert (=> b!910676 (= e!510682 (and e!510683 mapRes!30178))))

(declare-fun condMapEmpty!30178 () Bool)

(declare-fun mapDefault!30178 () ValueCell!9004)

