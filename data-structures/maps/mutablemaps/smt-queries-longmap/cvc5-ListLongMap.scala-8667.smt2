; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105400 () Bool)

(assert start!105400)

(declare-fun b_free!27037 () Bool)

(declare-fun b_next!27037 () Bool)

(assert (=> start!105400 (= b_free!27037 (not b_next!27037))))

(declare-fun tp!94623 () Bool)

(declare-fun b_and!44885 () Bool)

(assert (=> start!105400 (= tp!94623 b_and!44885)))

(declare-fun b!1255274 () Bool)

(declare-fun e!713446 () Bool)

(declare-fun tp_is_empty!31939 () Bool)

(assert (=> b!1255274 (= e!713446 tp_is_empty!31939)))

(declare-fun b!1255275 () Bool)

(declare-fun res!836968 () Bool)

(declare-fun e!713448 () Bool)

(assert (=> b!1255275 (=> (not res!836968) (not e!713448))))

(declare-datatypes ((array!81511 0))(
  ( (array!81512 (arr!39311 (Array (_ BitVec 32) (_ BitVec 64))) (size!39848 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81511)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81511 (_ BitVec 32)) Bool)

(assert (=> b!1255275 (= res!836968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49690 () Bool)

(declare-fun mapRes!49690 () Bool)

(declare-fun tp!94622 () Bool)

(assert (=> mapNonEmpty!49690 (= mapRes!49690 (and tp!94622 e!713446))))

(declare-datatypes ((V!47951 0))(
  ( (V!47952 (val!16032 Int)) )
))
(declare-datatypes ((ValueCell!15206 0))(
  ( (ValueCellFull!15206 (v!18732 V!47951)) (EmptyCell!15206) )
))
(declare-fun mapValue!49690 () ValueCell!15206)

(declare-fun mapRest!49690 () (Array (_ BitVec 32) ValueCell!15206))

(declare-fun mapKey!49690 () (_ BitVec 32))

(declare-datatypes ((array!81513 0))(
  ( (array!81514 (arr!39312 (Array (_ BitVec 32) ValueCell!15206)) (size!39849 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81513)

(assert (=> mapNonEmpty!49690 (= (arr!39312 _values!914) (store mapRest!49690 mapKey!49690 mapValue!49690))))

(declare-fun b!1255277 () Bool)

(declare-fun e!713444 () Bool)

(assert (=> b!1255277 (= e!713444 tp_is_empty!31939)))

(declare-fun b!1255278 () Bool)

(declare-fun res!836966 () Bool)

(assert (=> b!1255278 (=> (not res!836966) (not e!713448))))

(declare-datatypes ((List!28087 0))(
  ( (Nil!28084) (Cons!28083 (h!29292 (_ BitVec 64)) (t!41579 List!28087)) )
))
(declare-fun arrayNoDuplicates!0 (array!81511 (_ BitVec 32) List!28087) Bool)

(assert (=> b!1255278 (= res!836966 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28084))))

(declare-fun mapIsEmpty!49690 () Bool)

(assert (=> mapIsEmpty!49690 mapRes!49690))

(declare-fun b!1255276 () Bool)

(declare-fun e!713445 () Bool)

(assert (=> b!1255276 (= e!713445 (and e!713444 mapRes!49690))))

(declare-fun condMapEmpty!49690 () Bool)

(declare-fun mapDefault!49690 () ValueCell!15206)

