; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77722 () Bool)

(assert start!77722)

(declare-fun b_free!16279 () Bool)

(declare-fun b_next!16279 () Bool)

(assert (=> start!77722 (= b_free!16279 (not b_next!16279))))

(declare-fun tp!57100 () Bool)

(declare-fun b_and!26729 () Bool)

(assert (=> start!77722 (= tp!57100 b_and!26729)))

(declare-fun b!906080 () Bool)

(declare-fun e!507791 () Bool)

(declare-fun e!507797 () Bool)

(assert (=> b!906080 (= e!507791 (not e!507797))))

(declare-fun res!611585 () Bool)

(assert (=> b!906080 (=> res!611585 e!507797)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53422 0))(
  ( (array!53423 (arr!25666 (Array (_ BitVec 32) (_ BitVec 64))) (size!26126 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53422)

(assert (=> b!906080 (= res!611585 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26126 _keys!1386))))))

(declare-datatypes ((V!29895 0))(
  ( (V!29896 (val!9399 Int)) )
))
(declare-datatypes ((ValueCell!8867 0))(
  ( (ValueCellFull!8867 (v!11904 V!29895)) (EmptyCell!8867) )
))
(declare-datatypes ((array!53424 0))(
  ( (array!53425 (arr!25667 (Array (_ BitVec 32) ValueCell!8867)) (size!26127 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53424)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408787 () V!29895)

(declare-fun get!13507 (ValueCell!8867 V!29895) V!29895)

(declare-fun dynLambda!1347 (Int (_ BitVec 64)) V!29895)

(assert (=> b!906080 (= lt!408787 (get!13507 (select (arr!25667 _values!1152) i!717) (dynLambda!1347 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906080 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29895)

(declare-datatypes ((Unit!30721 0))(
  ( (Unit!30722) )
))
(declare-fun lt!408791 () Unit!30721)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29895)

(declare-fun lemmaKeyInListMapIsInArray!220 (array!53422 array!53424 (_ BitVec 32) (_ BitVec 32) V!29895 V!29895 (_ BitVec 64) Int) Unit!30721)

(assert (=> b!906080 (= lt!408791 (lemmaKeyInListMapIsInArray!220 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29758 () Bool)

(declare-fun mapRes!29758 () Bool)

(assert (=> mapIsEmpty!29758 mapRes!29758))

(declare-fun mapNonEmpty!29758 () Bool)

(declare-fun tp!57099 () Bool)

(declare-fun e!507792 () Bool)

(assert (=> mapNonEmpty!29758 (= mapRes!29758 (and tp!57099 e!507792))))

(declare-fun mapRest!29758 () (Array (_ BitVec 32) ValueCell!8867))

(declare-fun mapKey!29758 () (_ BitVec 32))

(declare-fun mapValue!29758 () ValueCell!8867)

(assert (=> mapNonEmpty!29758 (= (arr!25667 _values!1152) (store mapRest!29758 mapKey!29758 mapValue!29758))))

(declare-fun b!906081 () Bool)

(declare-fun res!611590 () Bool)

(assert (=> b!906081 (=> (not res!611590) (not e!507791))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906081 (= res!611590 (inRange!0 i!717 mask!1756))))

(declare-fun b!906082 () Bool)

(declare-fun res!611584 () Bool)

(declare-fun e!507790 () Bool)

(assert (=> b!906082 (=> (not res!611584) (not e!507790))))

(declare-datatypes ((List!18116 0))(
  ( (Nil!18113) (Cons!18112 (h!19258 (_ BitVec 64)) (t!25575 List!18116)) )
))
(declare-fun arrayNoDuplicates!0 (array!53422 (_ BitVec 32) List!18116) Bool)

(assert (=> b!906082 (= res!611584 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18113))))

(declare-fun b!906083 () Bool)

(declare-fun tp_is_empty!18697 () Bool)

(assert (=> b!906083 (= e!507792 tp_is_empty!18697)))

(declare-fun b!906085 () Bool)

(declare-fun res!611588 () Bool)

(declare-fun e!507793 () Bool)

(assert (=> b!906085 (=> res!611588 e!507793)))

(declare-datatypes ((tuple2!12254 0))(
  ( (tuple2!12255 (_1!6137 (_ BitVec 64)) (_2!6137 V!29895)) )
))
(declare-datatypes ((List!18117 0))(
  ( (Nil!18114) (Cons!18113 (h!19259 tuple2!12254) (t!25576 List!18117)) )
))
(declare-datatypes ((ListLongMap!10965 0))(
  ( (ListLongMap!10966 (toList!5498 List!18117)) )
))
(declare-fun lt!408789 () ListLongMap!10965)

(declare-fun apply!475 (ListLongMap!10965 (_ BitVec 64)) V!29895)

(assert (=> b!906085 (= res!611588 (not (= (apply!475 lt!408789 k!1033) lt!408787)))))

(declare-fun b!906086 () Bool)

(declare-fun res!611589 () Bool)

(assert (=> b!906086 (=> (not res!611589) (not e!507790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53422 (_ BitVec 32)) Bool)

(assert (=> b!906086 (= res!611589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906087 () Bool)

(assert (=> b!906087 (= e!507797 e!507793)))

(declare-fun res!611583 () Bool)

(assert (=> b!906087 (=> res!611583 e!507793)))

(declare-fun contains!4508 (ListLongMap!10965 (_ BitVec 64)) Bool)

(assert (=> b!906087 (= res!611583 (not (contains!4508 lt!408789 k!1033)))))

(declare-fun getCurrentListMap!2732 (array!53422 array!53424 (_ BitVec 32) (_ BitVec 32) V!29895 V!29895 (_ BitVec 32) Int) ListLongMap!10965)

(assert (=> b!906087 (= lt!408789 (getCurrentListMap!2732 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906088 () Bool)

(assert (=> b!906088 (= e!507790 e!507791)))

(declare-fun res!611592 () Bool)

(assert (=> b!906088 (=> (not res!611592) (not e!507791))))

(declare-fun lt!408790 () ListLongMap!10965)

(assert (=> b!906088 (= res!611592 (contains!4508 lt!408790 k!1033))))

(assert (=> b!906088 (= lt!408790 (getCurrentListMap!2732 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906089 () Bool)

(declare-fun res!611591 () Bool)

(assert (=> b!906089 (=> (not res!611591) (not e!507790))))

(assert (=> b!906089 (= res!611591 (and (= (size!26127 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26126 _keys!1386) (size!26127 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906090 () Bool)

(declare-fun res!611586 () Bool)

(assert (=> b!906090 (=> (not res!611586) (not e!507791))))

(assert (=> b!906090 (= res!611586 (and (= (select (arr!25666 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906091 () Bool)

(declare-fun e!507794 () Bool)

(declare-fun e!507795 () Bool)

(assert (=> b!906091 (= e!507794 (and e!507795 mapRes!29758))))

(declare-fun condMapEmpty!29758 () Bool)

(declare-fun mapDefault!29758 () ValueCell!8867)

