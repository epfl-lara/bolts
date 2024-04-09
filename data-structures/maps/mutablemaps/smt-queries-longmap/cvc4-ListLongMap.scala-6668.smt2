; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84012 () Bool)

(assert start!84012)

(declare-fun b_free!19739 () Bool)

(declare-fun b_next!19739 () Bool)

(assert (=> start!84012 (= b_free!19739 (not b_next!19739))))

(declare-fun tp!68741 () Bool)

(declare-fun b_and!31579 () Bool)

(assert (=> start!84012 (= tp!68741 b_and!31579)))

(declare-fun b!981324 () Bool)

(declare-fun e!553249 () Bool)

(assert (=> b!981324 (= e!553249 (not true))))

(declare-datatypes ((V!35365 0))(
  ( (V!35366 (val!11444 Int)) )
))
(declare-datatypes ((tuple2!14760 0))(
  ( (tuple2!14761 (_1!7390 (_ BitVec 64)) (_2!7390 V!35365)) )
))
(declare-datatypes ((List!20667 0))(
  ( (Nil!20664) (Cons!20663 (h!21825 tuple2!14760) (t!29364 List!20667)) )
))
(declare-datatypes ((ListLongMap!13471 0))(
  ( (ListLongMap!13472 (toList!6751 List!20667)) )
))
(declare-fun lt!435669 () ListLongMap!13471)

(declare-fun lt!435670 () tuple2!14760)

(declare-fun lt!435666 () tuple2!14760)

(declare-fun +!2955 (ListLongMap!13471 tuple2!14760) ListLongMap!13471)

(assert (=> b!981324 (= (+!2955 (+!2955 lt!435669 lt!435670) lt!435666) (+!2955 (+!2955 lt!435669 lt!435666) lt!435670))))

(declare-fun lt!435667 () V!35365)

(declare-datatypes ((array!61567 0))(
  ( (array!61568 (arr!29637 (Array (_ BitVec 32) (_ BitVec 64))) (size!30117 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61567)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981324 (= lt!435666 (tuple2!14761 (select (arr!29637 _keys!1544) from!1932) lt!435667))))

(declare-fun zeroValue!1220 () V!35365)

(assert (=> b!981324 (= lt!435670 (tuple2!14761 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32585 0))(
  ( (Unit!32586) )
))
(declare-fun lt!435668 () Unit!32585)

(declare-fun addCommutativeForDiffKeys!617 (ListLongMap!13471 (_ BitVec 64) V!35365 (_ BitVec 64) V!35365) Unit!32585)

(assert (=> b!981324 (= lt!435668 (addCommutativeForDiffKeys!617 lt!435669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29637 _keys!1544) from!1932) lt!435667))))

(declare-fun b!981325 () Bool)

(declare-fun res!656793 () Bool)

(declare-fun e!553246 () Bool)

(assert (=> b!981325 (=> (not res!656793) (not e!553246))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981325 (= res!656793 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981326 () Bool)

(declare-fun res!656795 () Bool)

(assert (=> b!981326 (=> (not res!656795) (not e!553246))))

(declare-datatypes ((List!20668 0))(
  ( (Nil!20665) (Cons!20664 (h!21826 (_ BitVec 64)) (t!29365 List!20668)) )
))
(declare-fun arrayNoDuplicates!0 (array!61567 (_ BitVec 32) List!20668) Bool)

(assert (=> b!981326 (= res!656795 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20665))))

(declare-fun b!981327 () Bool)

(declare-fun e!553250 () Bool)

(declare-fun tp_is_empty!22787 () Bool)

(assert (=> b!981327 (= e!553250 tp_is_empty!22787)))

(declare-fun b!981328 () Bool)

(declare-fun res!656798 () Bool)

(assert (=> b!981328 (=> (not res!656798) (not e!553246))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10912 0))(
  ( (ValueCellFull!10912 (v!14006 V!35365)) (EmptyCell!10912) )
))
(declare-datatypes ((array!61569 0))(
  ( (array!61570 (arr!29638 (Array (_ BitVec 32) ValueCell!10912)) (size!30118 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61569)

(assert (=> b!981328 (= res!656798 (and (= (size!30118 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30117 _keys!1544) (size!30118 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981329 () Bool)

(declare-fun res!656792 () Bool)

(assert (=> b!981329 (=> (not res!656792) (not e!553246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61567 (_ BitVec 32)) Bool)

(assert (=> b!981329 (= res!656792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981330 () Bool)

(declare-fun e!553247 () Bool)

(declare-fun e!553245 () Bool)

(declare-fun mapRes!36209 () Bool)

(assert (=> b!981330 (= e!553247 (and e!553245 mapRes!36209))))

(declare-fun condMapEmpty!36209 () Bool)

(declare-fun mapDefault!36209 () ValueCell!10912)

