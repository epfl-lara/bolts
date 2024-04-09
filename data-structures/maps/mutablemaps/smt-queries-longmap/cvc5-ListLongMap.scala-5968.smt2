; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77662 () Bool)

(assert start!77662)

(declare-fun b_free!16219 () Bool)

(declare-fun b_next!16219 () Bool)

(assert (=> start!77662 (= b_free!16219 (not b_next!16219))))

(declare-fun tp!56920 () Bool)

(declare-fun b_and!26609 () Bool)

(assert (=> start!77662 (= tp!56920 b_and!26609)))

(declare-fun mapIsEmpty!29668 () Bool)

(declare-fun mapRes!29668 () Bool)

(assert (=> mapIsEmpty!29668 mapRes!29668))

(declare-fun b!904850 () Bool)

(declare-fun e!507072 () Bool)

(declare-fun e!507071 () Bool)

(assert (=> b!904850 (= e!507072 e!507071)))

(declare-fun res!610686 () Bool)

(assert (=> b!904850 (=> (not res!610686) (not e!507071))))

(declare-datatypes ((V!29815 0))(
  ( (V!29816 (val!9369 Int)) )
))
(declare-datatypes ((tuple2!12200 0))(
  ( (tuple2!12201 (_1!6110 (_ BitVec 64)) (_2!6110 V!29815)) )
))
(declare-datatypes ((List!18071 0))(
  ( (Nil!18068) (Cons!18067 (h!19213 tuple2!12200) (t!25470 List!18071)) )
))
(declare-datatypes ((ListLongMap!10911 0))(
  ( (ListLongMap!10912 (toList!5471 List!18071)) )
))
(declare-fun lt!408338 () ListLongMap!10911)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4484 (ListLongMap!10911 (_ BitVec 64)) Bool)

(assert (=> b!904850 (= res!610686 (contains!4484 lt!408338 k!1033))))

(declare-datatypes ((ValueCell!8837 0))(
  ( (ValueCellFull!8837 (v!11874 V!29815)) (EmptyCell!8837) )
))
(declare-datatypes ((array!53304 0))(
  ( (array!53305 (arr!25607 (Array (_ BitVec 32) ValueCell!8837)) (size!26067 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53304)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29815)

(declare-datatypes ((array!53306 0))(
  ( (array!53307 (arr!25608 (Array (_ BitVec 32) (_ BitVec 64))) (size!26068 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53306)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29815)

(declare-fun getCurrentListMap!2708 (array!53306 array!53304 (_ BitVec 32) (_ BitVec 32) V!29815 V!29815 (_ BitVec 32) Int) ListLongMap!10911)

(assert (=> b!904850 (= lt!408338 (getCurrentListMap!2708 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapNonEmpty!29668 () Bool)

(declare-fun tp!56919 () Bool)

(declare-fun e!507074 () Bool)

(assert (=> mapNonEmpty!29668 (= mapRes!29668 (and tp!56919 e!507074))))

(declare-fun mapKey!29668 () (_ BitVec 32))

(declare-fun mapRest!29668 () (Array (_ BitVec 32) ValueCell!8837))

(declare-fun mapValue!29668 () ValueCell!8837)

(assert (=> mapNonEmpty!29668 (= (arr!25607 _values!1152) (store mapRest!29668 mapKey!29668 mapValue!29668))))

(declare-fun b!904851 () Bool)

(declare-fun res!610690 () Bool)

(assert (=> b!904851 (=> (not res!610690) (not e!507072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53306 (_ BitVec 32)) Bool)

(assert (=> b!904851 (= res!610690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!610689 () Bool)

(assert (=> start!77662 (=> (not res!610689) (not e!507072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77662 (= res!610689 (validMask!0 mask!1756))))

(assert (=> start!77662 e!507072))

(declare-fun e!507070 () Bool)

(declare-fun array_inv!20042 (array!53304) Bool)

(assert (=> start!77662 (and (array_inv!20042 _values!1152) e!507070)))

(assert (=> start!77662 tp!56920))

(assert (=> start!77662 true))

(declare-fun tp_is_empty!18637 () Bool)

(assert (=> start!77662 tp_is_empty!18637))

(declare-fun array_inv!20043 (array!53306) Bool)

(assert (=> start!77662 (array_inv!20043 _keys!1386)))

(declare-fun b!904852 () Bool)

(declare-fun e!507075 () Bool)

(assert (=> b!904852 (= e!507075 true)))

(declare-fun lt!408341 () V!29815)

(declare-fun apply!449 (ListLongMap!10911 (_ BitVec 64)) V!29815)

(assert (=> b!904852 (= (apply!449 lt!408338 k!1033) lt!408341)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((Unit!30671 0))(
  ( (Unit!30672) )
))
(declare-fun lt!408340 () Unit!30671)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!3 (array!53306 array!53304 (_ BitVec 32) (_ BitVec 32) V!29815 V!29815 (_ BitVec 64) V!29815 (_ BitVec 32) Int) Unit!30671)

(assert (=> b!904852 (= lt!408340 (lemmaListMapApplyFromThenApplyFromZero!3 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408341 i!717 defaultEntry!1160))))

(declare-fun b!904853 () Bool)

(declare-fun res!610684 () Bool)

(assert (=> b!904853 (=> (not res!610684) (not e!507071))))

(assert (=> b!904853 (= res!610684 (and (= (select (arr!25608 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904854 () Bool)

(declare-fun res!610692 () Bool)

(assert (=> b!904854 (=> (not res!610692) (not e!507071))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904854 (= res!610692 (inRange!0 i!717 mask!1756))))

(declare-fun b!904855 () Bool)

(declare-fun res!610691 () Bool)

(assert (=> b!904855 (=> res!610691 e!507075)))

(declare-fun lt!408339 () ListLongMap!10911)

(assert (=> b!904855 (= res!610691 (not (= (apply!449 lt!408339 k!1033) lt!408341)))))

(declare-fun b!904856 () Bool)

(declare-fun res!610688 () Bool)

(assert (=> b!904856 (=> (not res!610688) (not e!507072))))

(assert (=> b!904856 (= res!610688 (and (= (size!26067 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26068 _keys!1386) (size!26067 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904857 () Bool)

(assert (=> b!904857 (= e!507074 tp_is_empty!18637)))

(declare-fun b!904858 () Bool)

(declare-fun e!507073 () Bool)

(assert (=> b!904858 (= e!507071 (not e!507073))))

(declare-fun res!610683 () Bool)

(assert (=> b!904858 (=> res!610683 e!507073)))

(assert (=> b!904858 (= res!610683 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26068 _keys!1386))))))

(declare-fun get!13465 (ValueCell!8837 V!29815) V!29815)

(declare-fun dynLambda!1325 (Int (_ BitVec 64)) V!29815)

(assert (=> b!904858 (= lt!408341 (get!13465 (select (arr!25607 _values!1152) i!717) (dynLambda!1325 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904858 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408337 () Unit!30671)

(declare-fun lemmaKeyInListMapIsInArray!198 (array!53306 array!53304 (_ BitVec 32) (_ BitVec 32) V!29815 V!29815 (_ BitVec 64) Int) Unit!30671)

(assert (=> b!904858 (= lt!408337 (lemmaKeyInListMapIsInArray!198 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904859 () Bool)

(assert (=> b!904859 (= e!507073 e!507075)))

(declare-fun res!610687 () Bool)

(assert (=> b!904859 (=> res!610687 e!507075)))

(assert (=> b!904859 (= res!610687 (not (contains!4484 lt!408339 k!1033)))))

(assert (=> b!904859 (= lt!408339 (getCurrentListMap!2708 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904860 () Bool)

(declare-fun e!507077 () Bool)

(assert (=> b!904860 (= e!507077 tp_is_empty!18637)))

(declare-fun b!904861 () Bool)

(assert (=> b!904861 (= e!507070 (and e!507077 mapRes!29668))))

(declare-fun condMapEmpty!29668 () Bool)

(declare-fun mapDefault!29668 () ValueCell!8837)

