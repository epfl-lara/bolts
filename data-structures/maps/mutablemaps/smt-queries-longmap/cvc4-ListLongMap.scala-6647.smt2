; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83886 () Bool)

(assert start!83886)

(declare-fun b_free!19667 () Bool)

(declare-fun b_next!19667 () Bool)

(assert (=> start!83886 (= b_free!19667 (not b_next!19667))))

(declare-fun tp!68443 () Bool)

(declare-fun b_and!31441 () Bool)

(assert (=> start!83886 (= tp!68443 b_and!31441)))

(declare-fun b!979566 () Bool)

(declare-fun e!552201 () Bool)

(declare-fun e!552205 () Bool)

(assert (=> b!979566 (= e!552201 (not e!552205))))

(declare-fun res!655670 () Bool)

(assert (=> b!979566 (=> res!655670 e!552205)))

(declare-datatypes ((array!61335 0))(
  ( (array!61336 (arr!29521 (Array (_ BitVec 32) (_ BitVec 64))) (size!30001 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61335)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979566 (= res!655670 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29521 _keys!1544) from!1932)))))

(declare-datatypes ((V!35197 0))(
  ( (V!35198 (val!11381 Int)) )
))
(declare-datatypes ((tuple2!14700 0))(
  ( (tuple2!14701 (_1!7360 (_ BitVec 64)) (_2!7360 V!35197)) )
))
(declare-datatypes ((List!20593 0))(
  ( (Nil!20590) (Cons!20589 (h!21751 tuple2!14700) (t!29224 List!20593)) )
))
(declare-datatypes ((ListLongMap!13411 0))(
  ( (ListLongMap!13412 (toList!6721 List!20593)) )
))
(declare-fun lt!434639 () ListLongMap!13411)

(declare-fun lt!434637 () tuple2!14700)

(declare-fun lt!434640 () tuple2!14700)

(declare-fun lt!434641 () ListLongMap!13411)

(declare-fun +!2927 (ListLongMap!13411 tuple2!14700) ListLongMap!13411)

(assert (=> b!979566 (= (+!2927 lt!434641 lt!434637) (+!2927 lt!434639 lt!434640))))

(declare-fun lt!434636 () ListLongMap!13411)

(assert (=> b!979566 (= lt!434639 (+!2927 lt!434636 lt!434637))))

(declare-fun lt!434638 () V!35197)

(assert (=> b!979566 (= lt!434637 (tuple2!14701 (select (arr!29521 _keys!1544) from!1932) lt!434638))))

(assert (=> b!979566 (= lt!434641 (+!2927 lt!434636 lt!434640))))

(declare-fun minValue!1220 () V!35197)

(assert (=> b!979566 (= lt!434640 (tuple2!14701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32529 0))(
  ( (Unit!32530) )
))
(declare-fun lt!434644 () Unit!32529)

(declare-fun addCommutativeForDiffKeys!589 (ListLongMap!13411 (_ BitVec 64) V!35197 (_ BitVec 64) V!35197) Unit!32529)

(assert (=> b!979566 (= lt!434644 (addCommutativeForDiffKeys!589 lt!434636 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29521 _keys!1544) from!1932) lt!434638))))

(declare-datatypes ((ValueCell!10849 0))(
  ( (ValueCellFull!10849 (v!13943 V!35197)) (EmptyCell!10849) )
))
(declare-datatypes ((array!61337 0))(
  ( (array!61338 (arr!29522 (Array (_ BitVec 32) ValueCell!10849)) (size!30002 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61337)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15315 (ValueCell!10849 V!35197) V!35197)

(declare-fun dynLambda!1762 (Int (_ BitVec 64)) V!35197)

(assert (=> b!979566 (= lt!434638 (get!15315 (select (arr!29522 _values!1278) from!1932) (dynLambda!1762 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434642 () ListLongMap!13411)

(declare-fun lt!434635 () tuple2!14700)

(assert (=> b!979566 (= lt!434636 (+!2927 lt!434642 lt!434635))))

(declare-fun zeroValue!1220 () V!35197)

(assert (=> b!979566 (= lt!434635 (tuple2!14701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3387 (array!61335 array!61337 (_ BitVec 32) (_ BitVec 32) V!35197 V!35197 (_ BitVec 32) Int) ListLongMap!13411)

(assert (=> b!979566 (= lt!434642 (getCurrentListMapNoExtraKeys!3387 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979567 () Bool)

(declare-fun res!655668 () Bool)

(assert (=> b!979567 (=> (not res!655668) (not e!552201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979567 (= res!655668 (validKeyInArray!0 (select (arr!29521 _keys!1544) from!1932)))))

(declare-fun b!979568 () Bool)

(assert (=> b!979568 (= e!552205 true)))

(assert (=> b!979568 (= lt!434639 (+!2927 (+!2927 lt!434642 lt!434637) lt!434635))))

(declare-fun lt!434643 () Unit!32529)

(assert (=> b!979568 (= lt!434643 (addCommutativeForDiffKeys!589 lt!434642 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29521 _keys!1544) from!1932) lt!434638))))

(declare-fun b!979569 () Bool)

(declare-fun res!655669 () Bool)

(assert (=> b!979569 (=> (not res!655669) (not e!552201))))

(declare-datatypes ((List!20594 0))(
  ( (Nil!20591) (Cons!20590 (h!21752 (_ BitVec 64)) (t!29225 List!20594)) )
))
(declare-fun arrayNoDuplicates!0 (array!61335 (_ BitVec 32) List!20594) Bool)

(assert (=> b!979569 (= res!655669 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20591))))

(declare-fun b!979570 () Bool)

(declare-fun res!655673 () Bool)

(assert (=> b!979570 (=> (not res!655673) (not e!552201))))

(assert (=> b!979570 (= res!655673 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30001 _keys!1544))))))

(declare-fun b!979571 () Bool)

(declare-fun e!552204 () Bool)

(declare-fun tp_is_empty!22661 () Bool)

(assert (=> b!979571 (= e!552204 tp_is_empty!22661)))

(declare-fun b!979572 () Bool)

(declare-fun res!655667 () Bool)

(assert (=> b!979572 (=> (not res!655667) (not e!552201))))

(assert (=> b!979572 (= res!655667 (and (= (size!30002 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30001 _keys!1544) (size!30002 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979573 () Bool)

(declare-fun e!552203 () Bool)

(assert (=> b!979573 (= e!552203 tp_is_empty!22661)))

(declare-fun res!655671 () Bool)

(assert (=> start!83886 (=> (not res!655671) (not e!552201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83886 (= res!655671 (validMask!0 mask!1948))))

(assert (=> start!83886 e!552201))

(assert (=> start!83886 true))

(assert (=> start!83886 tp_is_empty!22661))

(declare-fun e!552202 () Bool)

(declare-fun array_inv!22715 (array!61337) Bool)

(assert (=> start!83886 (and (array_inv!22715 _values!1278) e!552202)))

(assert (=> start!83886 tp!68443))

(declare-fun array_inv!22716 (array!61335) Bool)

(assert (=> start!83886 (array_inv!22716 _keys!1544)))

(declare-fun b!979574 () Bool)

(declare-fun res!655672 () Bool)

(assert (=> b!979574 (=> (not res!655672) (not e!552201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61335 (_ BitVec 32)) Bool)

(assert (=> b!979574 (= res!655672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36020 () Bool)

(declare-fun mapRes!36020 () Bool)

(assert (=> mapIsEmpty!36020 mapRes!36020))

(declare-fun b!979575 () Bool)

(assert (=> b!979575 (= e!552202 (and e!552204 mapRes!36020))))

(declare-fun condMapEmpty!36020 () Bool)

(declare-fun mapDefault!36020 () ValueCell!10849)

