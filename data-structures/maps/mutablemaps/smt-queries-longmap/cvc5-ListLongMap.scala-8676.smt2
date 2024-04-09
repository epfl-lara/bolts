; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105468 () Bool)

(assert start!105468)

(declare-fun b_free!27091 () Bool)

(declare-fun b_next!27091 () Bool)

(assert (=> start!105468 (= b_free!27091 (not b_next!27091))))

(declare-fun tp!94787 () Bool)

(declare-fun b_and!44947 () Bool)

(assert (=> start!105468 (= tp!94787 b_and!44947)))

(declare-fun b!1256047 () Bool)

(declare-fun res!837444 () Bool)

(declare-fun e!714031 () Bool)

(assert (=> b!1256047 (=> (not res!837444) (not e!714031))))

(declare-datatypes ((array!81619 0))(
  ( (array!81620 (arr!39364 (Array (_ BitVec 32) (_ BitVec 64))) (size!39901 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81619)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81619 (_ BitVec 32)) Bool)

(assert (=> b!1256047 (= res!837444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256048 () Bool)

(declare-fun res!837441 () Bool)

(assert (=> b!1256048 (=> (not res!837441) (not e!714031))))

(declare-datatypes ((List!28128 0))(
  ( (Nil!28125) (Cons!28124 (h!29333 (_ BitVec 64)) (t!41622 List!28128)) )
))
(declare-fun arrayNoDuplicates!0 (array!81619 (_ BitVec 32) List!28128) Bool)

(assert (=> b!1256048 (= res!837441 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28125))))

(declare-fun b!1256049 () Bool)

(declare-fun e!714027 () Bool)

(declare-fun e!714029 () Bool)

(declare-fun mapRes!49774 () Bool)

(assert (=> b!1256049 (= e!714027 (and e!714029 mapRes!49774))))

(declare-fun condMapEmpty!49774 () Bool)

(declare-datatypes ((V!48023 0))(
  ( (V!48024 (val!16059 Int)) )
))
(declare-datatypes ((ValueCell!15233 0))(
  ( (ValueCellFull!15233 (v!18759 V!48023)) (EmptyCell!15233) )
))
(declare-datatypes ((array!81621 0))(
  ( (array!81622 (arr!39365 (Array (_ BitVec 32) ValueCell!15233)) (size!39902 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81621)

(declare-fun mapDefault!49774 () ValueCell!15233)

