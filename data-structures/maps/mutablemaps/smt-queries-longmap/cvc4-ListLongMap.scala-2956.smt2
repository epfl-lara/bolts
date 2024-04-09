; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41984 () Bool)

(assert start!41984)

(declare-fun b_free!11549 () Bool)

(declare-fun b_next!11549 () Bool)

(assert (=> start!41984 (= b_free!11549 (not b_next!11549))))

(declare-fun tp!40662 () Bool)

(declare-fun b_and!19965 () Bool)

(assert (=> start!41984 (= tp!40662 b_and!19965)))

(declare-fun b!468447 () Bool)

(declare-fun res!280015 () Bool)

(declare-fun e!274197 () Bool)

(assert (=> b!468447 (=> (not res!280015) (not e!274197))))

(declare-datatypes ((array!29687 0))(
  ( (array!29688 (arr!14266 (Array (_ BitVec 32) (_ BitVec 64))) (size!14618 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29687)

(declare-datatypes ((List!8686 0))(
  ( (Nil!8683) (Cons!8682 (h!9538 (_ BitVec 64)) (t!14652 List!8686)) )
))
(declare-fun arrayNoDuplicates!0 (array!29687 (_ BitVec 32) List!8686) Bool)

(assert (=> b!468447 (= res!280015 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8683))))

(declare-fun b!468448 () Bool)

(declare-fun e!274198 () Bool)

(declare-fun tp_is_empty!12977 () Bool)

(assert (=> b!468448 (= e!274198 tp_is_empty!12977)))

(declare-fun res!280017 () Bool)

(assert (=> start!41984 (=> (not res!280017) (not e!274197))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41984 (= res!280017 (validMask!0 mask!1365))))

(assert (=> start!41984 e!274197))

(assert (=> start!41984 tp_is_empty!12977))

(assert (=> start!41984 tp!40662))

(assert (=> start!41984 true))

(declare-fun array_inv!10288 (array!29687) Bool)

(assert (=> start!41984 (array_inv!10288 _keys!1025)))

(declare-datatypes ((V!18407 0))(
  ( (V!18408 (val!6533 Int)) )
))
(declare-datatypes ((ValueCell!6145 0))(
  ( (ValueCellFull!6145 (v!8818 V!18407)) (EmptyCell!6145) )
))
(declare-datatypes ((array!29689 0))(
  ( (array!29690 (arr!14267 (Array (_ BitVec 32) ValueCell!6145)) (size!14619 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29689)

(declare-fun e!274195 () Bool)

(declare-fun array_inv!10289 (array!29689) Bool)

(assert (=> start!41984 (and (array_inv!10289 _values!833) e!274195)))

(declare-fun mapIsEmpty!21160 () Bool)

(declare-fun mapRes!21160 () Bool)

(assert (=> mapIsEmpty!21160 mapRes!21160))

(declare-fun b!468449 () Bool)

(declare-fun res!280016 () Bool)

(assert (=> b!468449 (=> (not res!280016) (not e!274197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29687 (_ BitVec 32)) Bool)

(assert (=> b!468449 (= res!280016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468450 () Bool)

(declare-fun e!274196 () Bool)

(assert (=> b!468450 (= e!274197 (not e!274196))))

(declare-fun res!280019 () Bool)

(assert (=> b!468450 (=> res!280019 e!274196)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468450 (= res!280019 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8566 0))(
  ( (tuple2!8567 (_1!4293 (_ BitVec 64)) (_2!4293 V!18407)) )
))
(declare-datatypes ((List!8687 0))(
  ( (Nil!8684) (Cons!8683 (h!9539 tuple2!8566) (t!14653 List!8687)) )
))
(declare-datatypes ((ListLongMap!7493 0))(
  ( (ListLongMap!7494 (toList!3762 List!8687)) )
))
(declare-fun lt!211982 () ListLongMap!7493)

(declare-fun lt!211979 () ListLongMap!7493)

(assert (=> b!468450 (= lt!211982 lt!211979)))

(declare-fun minValueBefore!38 () V!18407)

(declare-fun zeroValue!794 () V!18407)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13646 0))(
  ( (Unit!13647) )
))
(declare-fun lt!211980 () Unit!13646)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18407)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!122 (array!29687 array!29689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18407 V!18407 V!18407 V!18407 (_ BitVec 32) Int) Unit!13646)

(assert (=> b!468450 (= lt!211980 (lemmaNoChangeToArrayThenSameMapNoExtras!122 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1927 (array!29687 array!29689 (_ BitVec 32) (_ BitVec 32) V!18407 V!18407 (_ BitVec 32) Int) ListLongMap!7493)

(assert (=> b!468450 (= lt!211979 (getCurrentListMapNoExtraKeys!1927 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468450 (= lt!211982 (getCurrentListMapNoExtraKeys!1927 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468451 () Bool)

(declare-fun e!274200 () Bool)

(assert (=> b!468451 (= e!274195 (and e!274200 mapRes!21160))))

(declare-fun condMapEmpty!21160 () Bool)

(declare-fun mapDefault!21160 () ValueCell!6145)

