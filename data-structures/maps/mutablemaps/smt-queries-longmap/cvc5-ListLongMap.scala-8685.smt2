; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105544 () Bool)

(assert start!105544)

(declare-fun b_free!27145 () Bool)

(declare-fun b_next!27145 () Bool)

(assert (=> start!105544 (= b_free!27145 (not b_next!27145))))

(declare-fun tp!94952 () Bool)

(declare-fun b_and!45011 () Bool)

(assert (=> start!105544 (= tp!94952 b_and!45011)))

(declare-fun b!1256933 () Bool)

(declare-fun e!714698 () Bool)

(declare-fun tp_is_empty!32047 () Bool)

(assert (=> b!1256933 (= e!714698 tp_is_empty!32047)))

(declare-fun b!1256934 () Bool)

(declare-fun res!837993 () Bool)

(declare-fun e!714697 () Bool)

(assert (=> b!1256934 (=> (not res!837993) (not e!714697))))

(declare-datatypes ((array!81727 0))(
  ( (array!81728 (arr!39417 (Array (_ BitVec 32) (_ BitVec 64))) (size!39954 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81727)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81727 (_ BitVec 32)) Bool)

(assert (=> b!1256934 (= res!837993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256935 () Bool)

(declare-fun res!837992 () Bool)

(assert (=> b!1256935 (=> (not res!837992) (not e!714697))))

(declare-datatypes ((List!28169 0))(
  ( (Nil!28166) (Cons!28165 (h!29374 (_ BitVec 64)) (t!41665 List!28169)) )
))
(declare-fun arrayNoDuplicates!0 (array!81727 (_ BitVec 32) List!28169) Bool)

(assert (=> b!1256935 (= res!837992 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28166))))

(declare-fun b!1256936 () Bool)

(declare-fun e!714693 () Bool)

(assert (=> b!1256936 (= e!714693 tp_is_empty!32047)))

(declare-fun b!1256937 () Bool)

(declare-fun e!714692 () Bool)

(assert (=> b!1256937 (= e!714692 true)))

(declare-datatypes ((V!48095 0))(
  ( (V!48096 (val!16086 Int)) )
))
(declare-datatypes ((tuple2!20936 0))(
  ( (tuple2!20937 (_1!10478 (_ BitVec 64)) (_2!10478 V!48095)) )
))
(declare-datatypes ((List!28170 0))(
  ( (Nil!28167) (Cons!28166 (h!29375 tuple2!20936) (t!41666 List!28170)) )
))
(declare-datatypes ((ListLongMap!18821 0))(
  ( (ListLongMap!18822 (toList!9426 List!28170)) )
))
(declare-fun lt!568421 () ListLongMap!18821)

(declare-fun -!2102 (ListLongMap!18821 (_ BitVec 64)) ListLongMap!18821)

(assert (=> b!1256937 (= (-!2102 lt!568421 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568421)))

(declare-datatypes ((Unit!41824 0))(
  ( (Unit!41825) )
))
(declare-fun lt!568420 () Unit!41824)

(declare-fun removeNotPresentStillSame!135 (ListLongMap!18821 (_ BitVec 64)) Unit!41824)

(assert (=> b!1256937 (= lt!568420 (removeNotPresentStillSame!135 lt!568421 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!837989 () Bool)

(assert (=> start!105544 (=> (not res!837989) (not e!714697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105544 (= res!837989 (validMask!0 mask!1466))))

(assert (=> start!105544 e!714697))

(assert (=> start!105544 true))

(assert (=> start!105544 tp!94952))

(assert (=> start!105544 tp_is_empty!32047))

(declare-fun array_inv!29971 (array!81727) Bool)

(assert (=> start!105544 (array_inv!29971 _keys!1118)))

(declare-datatypes ((ValueCell!15260 0))(
  ( (ValueCellFull!15260 (v!18787 V!48095)) (EmptyCell!15260) )
))
(declare-datatypes ((array!81729 0))(
  ( (array!81730 (arr!39418 (Array (_ BitVec 32) ValueCell!15260)) (size!39955 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81729)

(declare-fun e!714696 () Bool)

(declare-fun array_inv!29972 (array!81729) Bool)

(assert (=> start!105544 (and (array_inv!29972 _values!914) e!714696)))

(declare-fun b!1256938 () Bool)

(declare-fun mapRes!49858 () Bool)

(assert (=> b!1256938 (= e!714696 (and e!714693 mapRes!49858))))

(declare-fun condMapEmpty!49858 () Bool)

(declare-fun mapDefault!49858 () ValueCell!15260)

