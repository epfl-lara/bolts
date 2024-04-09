; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104644 () Bool)

(assert start!104644)

(declare-fun res!832375 () Bool)

(declare-fun e!707619 () Bool)

(assert (=> start!104644 (=> (not res!832375) (not e!707619))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104644 (= res!832375 (validMask!0 mask!1466))))

(assert (=> start!104644 e!707619))

(assert (=> start!104644 true))

(declare-datatypes ((array!80351 0))(
  ( (array!80352 (arr!38740 (Array (_ BitVec 32) (_ BitVec 64))) (size!39277 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80351)

(declare-fun array_inv!29507 (array!80351) Bool)

(assert (=> start!104644 (array_inv!29507 _keys!1118)))

(declare-datatypes ((V!47147 0))(
  ( (V!47148 (val!15731 Int)) )
))
(declare-datatypes ((ValueCell!14905 0))(
  ( (ValueCellFull!14905 (v!18427 V!47147)) (EmptyCell!14905) )
))
(declare-datatypes ((array!80353 0))(
  ( (array!80354 (arr!38741 (Array (_ BitVec 32) ValueCell!14905)) (size!39278 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80353)

(declare-fun e!707621 () Bool)

(declare-fun array_inv!29508 (array!80353) Bool)

(assert (=> start!104644 (and (array_inv!29508 _values!914) e!707621)))

(declare-fun b!1247315 () Bool)

(declare-fun res!832376 () Bool)

(assert (=> b!1247315 (=> (not res!832376) (not e!707619))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247315 (= res!832376 (and (= (size!39278 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39277 _keys!1118) (size!39278 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!48760 () Bool)

(declare-fun mapRes!48760 () Bool)

(assert (=> mapIsEmpty!48760 mapRes!48760))

(declare-fun b!1247316 () Bool)

(assert (=> b!1247316 (= e!707619 false)))

(declare-fun lt!563193 () Bool)

(declare-datatypes ((List!27690 0))(
  ( (Nil!27687) (Cons!27686 (h!28895 (_ BitVec 64)) (t!41166 List!27690)) )
))
(declare-fun arrayNoDuplicates!0 (array!80351 (_ BitVec 32) List!27690) Bool)

(assert (=> b!1247316 (= lt!563193 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27687))))

(declare-fun b!1247317 () Bool)

(declare-fun e!707620 () Bool)

(assert (=> b!1247317 (= e!707621 (and e!707620 mapRes!48760))))

(declare-fun condMapEmpty!48760 () Bool)

(declare-fun mapDefault!48760 () ValueCell!14905)

