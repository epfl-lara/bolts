; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93816 () Bool)

(assert start!93816)

(declare-fun b_free!21253 () Bool)

(declare-fun b_next!21253 () Bool)

(assert (=> start!93816 (= b_free!21253 (not b_next!21253))))

(declare-fun tp!75183 () Bool)

(declare-fun b_and!33985 () Bool)

(assert (=> start!93816 (= tp!75183 b_and!33985)))

(declare-fun b!1060668 () Bool)

(declare-fun e!603944 () Bool)

(declare-fun tp_is_empty!25063 () Bool)

(assert (=> b!1060668 (= e!603944 tp_is_empty!25063)))

(declare-fun b!1060669 () Bool)

(declare-fun e!603945 () Bool)

(assert (=> b!1060669 (= e!603945 tp_is_empty!25063)))

(declare-fun res!708468 () Bool)

(declare-fun e!603943 () Bool)

(assert (=> start!93816 (=> (not res!708468) (not e!603943))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93816 (= res!708468 (validMask!0 mask!1515))))

(assert (=> start!93816 e!603943))

(assert (=> start!93816 true))

(assert (=> start!93816 tp_is_empty!25063))

(declare-datatypes ((V!38553 0))(
  ( (V!38554 (val!12582 Int)) )
))
(declare-datatypes ((ValueCell!11828 0))(
  ( (ValueCellFull!11828 (v!15193 V!38553)) (EmptyCell!11828) )
))
(declare-datatypes ((array!67120 0))(
  ( (array!67121 (arr!32264 (Array (_ BitVec 32) ValueCell!11828)) (size!32801 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67120)

(declare-fun e!603947 () Bool)

(declare-fun array_inv!24848 (array!67120) Bool)

(assert (=> start!93816 (and (array_inv!24848 _values!955) e!603947)))

(assert (=> start!93816 tp!75183))

(declare-datatypes ((array!67122 0))(
  ( (array!67123 (arr!32265 (Array (_ BitVec 32) (_ BitVec 64))) (size!32802 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67122)

(declare-fun array_inv!24849 (array!67122) Bool)

(assert (=> start!93816 (array_inv!24849 _keys!1163)))

(declare-fun b!1060670 () Bool)

(assert (=> b!1060670 (= e!603943 false)))

(declare-datatypes ((tuple2!15996 0))(
  ( (tuple2!15997 (_1!8008 (_ BitVec 64)) (_2!8008 V!38553)) )
))
(declare-datatypes ((List!22608 0))(
  ( (Nil!22605) (Cons!22604 (h!23813 tuple2!15996) (t!31924 List!22608)) )
))
(declare-datatypes ((ListLongMap!13977 0))(
  ( (ListLongMap!13978 (toList!7004 List!22608)) )
))
(declare-fun lt!467336 () ListLongMap!13977)

(declare-fun minValue!907 () V!38553)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38553)

(declare-fun getCurrentListMapNoExtraKeys!3568 (array!67122 array!67120 (_ BitVec 32) (_ BitVec 32) V!38553 V!38553 (_ BitVec 32) Int) ListLongMap!13977)

(assert (=> b!1060670 (= lt!467336 (getCurrentListMapNoExtraKeys!3568 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38553)

(declare-fun lt!467335 () ListLongMap!13977)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060670 (= lt!467335 (getCurrentListMapNoExtraKeys!3568 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060671 () Bool)

(declare-fun res!708469 () Bool)

(assert (=> b!1060671 (=> (not res!708469) (not e!603943))))

(declare-datatypes ((List!22609 0))(
  ( (Nil!22606) (Cons!22605 (h!23814 (_ BitVec 64)) (t!31925 List!22609)) )
))
(declare-fun arrayNoDuplicates!0 (array!67122 (_ BitVec 32) List!22609) Bool)

(assert (=> b!1060671 (= res!708469 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22606))))

(declare-fun mapNonEmpty!39265 () Bool)

(declare-fun mapRes!39265 () Bool)

(declare-fun tp!75182 () Bool)

(assert (=> mapNonEmpty!39265 (= mapRes!39265 (and tp!75182 e!603945))))

(declare-fun mapValue!39265 () ValueCell!11828)

(declare-fun mapKey!39265 () (_ BitVec 32))

(declare-fun mapRest!39265 () (Array (_ BitVec 32) ValueCell!11828))

(assert (=> mapNonEmpty!39265 (= (arr!32264 _values!955) (store mapRest!39265 mapKey!39265 mapValue!39265))))

(declare-fun b!1060672 () Bool)

(assert (=> b!1060672 (= e!603947 (and e!603944 mapRes!39265))))

(declare-fun condMapEmpty!39265 () Bool)

(declare-fun mapDefault!39265 () ValueCell!11828)

