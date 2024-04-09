; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83360 () Bool)

(assert start!83360)

(declare-fun b_free!19325 () Bool)

(declare-fun b_next!19325 () Bool)

(assert (=> start!83360 (= b_free!19325 (not b_next!19325))))

(declare-fun tp!67254 () Bool)

(declare-fun b_and!30889 () Bool)

(assert (=> start!83360 (= tp!67254 b_and!30889)))

(declare-fun b!972676 () Bool)

(declare-fun res!651188 () Bool)

(declare-fun e!548273 () Bool)

(assert (=> b!972676 (=> (not res!651188) (not e!548273))))

(declare-datatypes ((array!60473 0))(
  ( (array!60474 (arr!29096 (Array (_ BitVec 32) (_ BitVec 64))) (size!29576 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60473)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!972676 (= res!651188 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29576 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29576 _keys!1717))))))

(declare-fun mapIsEmpty!35344 () Bool)

(declare-fun mapRes!35344 () Bool)

(assert (=> mapIsEmpty!35344 mapRes!35344))

(declare-fun b!972677 () Bool)

(declare-fun res!651193 () Bool)

(assert (=> b!972677 (=> (not res!651193) (not e!548273))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60473 (_ BitVec 32)) Bool)

(assert (=> b!972677 (= res!651193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972678 () Bool)

(declare-fun e!548276 () Bool)

(assert (=> b!972678 (= e!548276 (not true))))

(declare-datatypes ((V!34613 0))(
  ( (V!34614 (val!11162 Int)) )
))
(declare-datatypes ((ValueCell!10630 0))(
  ( (ValueCellFull!10630 (v!13721 V!34613)) (EmptyCell!10630) )
))
(declare-datatypes ((array!60475 0))(
  ( (array!60476 (arr!29097 (Array (_ BitVec 32) ValueCell!10630)) (size!29577 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60475)

(declare-fun defaultEntry!1428 () Int)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34613)

(declare-fun lt!432081 () (_ BitVec 64))

(declare-fun minValue!1367 () V!34613)

(declare-datatypes ((tuple2!14420 0))(
  ( (tuple2!14421 (_1!7220 (_ BitVec 64)) (_2!7220 V!34613)) )
))
(declare-datatypes ((List!20308 0))(
  ( (Nil!20305) (Cons!20304 (h!21466 tuple2!14420) (t!28739 List!20308)) )
))
(declare-datatypes ((ListLongMap!13131 0))(
  ( (ListLongMap!13132 (toList!6581 List!20308)) )
))
(declare-fun lt!432080 () ListLongMap!13131)

(declare-fun +!2855 (ListLongMap!13131 tuple2!14420) ListLongMap!13131)

(declare-fun getCurrentListMap!3766 (array!60473 array!60475 (_ BitVec 32) (_ BitVec 32) V!34613 V!34613 (_ BitVec 32) Int) ListLongMap!13131)

(declare-fun get!15098 (ValueCell!10630 V!34613) V!34613)

(declare-fun dynLambda!1694 (Int (_ BitVec 64)) V!34613)

(assert (=> b!972678 (= lt!432080 (+!2855 (getCurrentListMap!3766 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14421 lt!432081 (get!15098 (select (arr!29097 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1694 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32371 0))(
  ( (Unit!32372) )
))
(declare-fun lt!432082 () Unit!32371)

(declare-fun lemmaListMapRecursiveValidKeyArray!266 (array!60473 array!60475 (_ BitVec 32) (_ BitVec 32) V!34613 V!34613 (_ BitVec 32) Int) Unit!32371)

(assert (=> b!972678 (= lt!432082 (lemmaListMapRecursiveValidKeyArray!266 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972679 () Bool)

(declare-fun res!651189 () Bool)

(assert (=> b!972679 (=> (not res!651189) (not e!548273))))

(assert (=> b!972679 (= res!651189 (and (= (size!29577 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29576 _keys!1717) (size!29577 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!651191 () Bool)

(assert (=> start!83360 (=> (not res!651191) (not e!548273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83360 (= res!651191 (validMask!0 mask!2147))))

(assert (=> start!83360 e!548273))

(assert (=> start!83360 true))

(declare-fun e!548272 () Bool)

(declare-fun array_inv!22407 (array!60475) Bool)

(assert (=> start!83360 (and (array_inv!22407 _values!1425) e!548272)))

(declare-fun tp_is_empty!22223 () Bool)

(assert (=> start!83360 tp_is_empty!22223))

(assert (=> start!83360 tp!67254))

(declare-fun array_inv!22408 (array!60473) Bool)

(assert (=> start!83360 (array_inv!22408 _keys!1717)))

(declare-fun b!972680 () Bool)

(declare-fun res!651190 () Bool)

(assert (=> b!972680 (=> (not res!651190) (not e!548273))))

(declare-fun contains!5628 (ListLongMap!13131 (_ BitVec 64)) Bool)

(assert (=> b!972680 (= res!651190 (contains!5628 (getCurrentListMap!3766 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29096 _keys!1717) i!822)))))

(declare-fun b!972681 () Bool)

(assert (=> b!972681 (= e!548273 e!548276)))

(declare-fun res!651187 () Bool)

(assert (=> b!972681 (=> (not res!651187) (not e!548276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972681 (= res!651187 (validKeyInArray!0 lt!432081))))

(assert (=> b!972681 (= lt!432081 (select (arr!29096 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972681 (= lt!432080 (getCurrentListMap!3766 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972682 () Bool)

(declare-fun e!548274 () Bool)

(assert (=> b!972682 (= e!548274 tp_is_empty!22223)))

(declare-fun b!972683 () Bool)

(declare-fun res!651192 () Bool)

(assert (=> b!972683 (=> (not res!651192) (not e!548273))))

(assert (=> b!972683 (= res!651192 (validKeyInArray!0 (select (arr!29096 _keys!1717) i!822)))))

(declare-fun b!972684 () Bool)

(declare-fun e!548275 () Bool)

(assert (=> b!972684 (= e!548272 (and e!548275 mapRes!35344))))

(declare-fun condMapEmpty!35344 () Bool)

(declare-fun mapDefault!35344 () ValueCell!10630)

