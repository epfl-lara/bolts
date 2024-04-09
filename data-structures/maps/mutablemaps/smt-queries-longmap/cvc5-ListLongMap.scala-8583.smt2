; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104752 () Bool)

(assert start!104752)

(declare-fun b_free!26533 () Bool)

(declare-fun b_next!26533 () Bool)

(assert (=> start!104752 (= b_free!26533 (not b_next!26533))))

(declare-fun tp!93086 () Bool)

(declare-fun b_and!44307 () Bool)

(assert (=> start!104752 (= tp!93086 b_and!44307)))

(declare-fun mapNonEmpty!48910 () Bool)

(declare-fun mapRes!48910 () Bool)

(declare-fun tp!93087 () Bool)

(declare-fun e!708384 () Bool)

(assert (=> mapNonEmpty!48910 (= mapRes!48910 (and tp!93087 e!708384))))

(declare-fun mapKey!48910 () (_ BitVec 32))

(declare-datatypes ((V!47279 0))(
  ( (V!47280 (val!15780 Int)) )
))
(declare-datatypes ((ValueCell!14954 0))(
  ( (ValueCellFull!14954 (v!18476 V!47279)) (EmptyCell!14954) )
))
(declare-fun mapRest!48910 () (Array (_ BitVec 32) ValueCell!14954))

(declare-fun mapValue!48910 () ValueCell!14954)

(declare-datatypes ((array!80537 0))(
  ( (array!80538 (arr!38832 (Array (_ BitVec 32) ValueCell!14954)) (size!39369 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80537)

(assert (=> mapNonEmpty!48910 (= (arr!38832 _values!914) (store mapRest!48910 mapKey!48910 mapValue!48910))))

(declare-fun b!1248315 () Bool)

(declare-fun tp_is_empty!31435 () Bool)

(assert (=> b!1248315 (= e!708384 tp_is_empty!31435)))

(declare-fun b!1248316 () Bool)

(declare-fun res!832916 () Bool)

(declare-fun e!708383 () Bool)

(assert (=> b!1248316 (=> (not res!832916) (not e!708383))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80539 0))(
  ( (array!80540 (arr!38833 (Array (_ BitVec 32) (_ BitVec 64))) (size!39370 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80539)

(assert (=> b!1248316 (= res!832916 (and (= (size!39369 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39370 _keys!1118) (size!39369 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!832915 () Bool)

(assert (=> start!104752 (=> (not res!832915) (not e!708383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104752 (= res!832915 (validMask!0 mask!1466))))

(assert (=> start!104752 e!708383))

(assert (=> start!104752 true))

(assert (=> start!104752 tp!93086))

(assert (=> start!104752 tp_is_empty!31435))

(declare-fun array_inv!29565 (array!80539) Bool)

(assert (=> start!104752 (array_inv!29565 _keys!1118)))

(declare-fun e!708382 () Bool)

(declare-fun array_inv!29566 (array!80537) Bool)

(assert (=> start!104752 (and (array_inv!29566 _values!914) e!708382)))

(declare-fun mapIsEmpty!48910 () Bool)

(assert (=> mapIsEmpty!48910 mapRes!48910))

(declare-fun b!1248317 () Bool)

(declare-fun res!832917 () Bool)

(assert (=> b!1248317 (=> (not res!832917) (not e!708383))))

(declare-datatypes ((List!27740 0))(
  ( (Nil!27737) (Cons!27736 (h!28945 (_ BitVec 64)) (t!41216 List!27740)) )
))
(declare-fun arrayNoDuplicates!0 (array!80539 (_ BitVec 32) List!27740) Bool)

(assert (=> b!1248317 (= res!832917 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27737))))

(declare-fun b!1248318 () Bool)

(declare-fun res!832914 () Bool)

(assert (=> b!1248318 (=> (not res!832914) (not e!708383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80539 (_ BitVec 32)) Bool)

(assert (=> b!1248318 (= res!832914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248319 () Bool)

(declare-fun e!708381 () Bool)

(assert (=> b!1248319 (= e!708382 (and e!708381 mapRes!48910))))

(declare-fun condMapEmpty!48910 () Bool)

(declare-fun mapDefault!48910 () ValueCell!14954)

