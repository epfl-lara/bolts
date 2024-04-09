; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107264 () Bool)

(assert start!107264)

(declare-fun mapIsEmpty!50956 () Bool)

(declare-fun mapRes!50956 () Bool)

(assert (=> mapIsEmpty!50956 mapRes!50956))

(declare-fun b!1270977 () Bool)

(declare-fun e!724686 () Bool)

(assert (=> b!1270977 (= e!724686 false)))

(declare-fun lt!574748 () Bool)

(declare-datatypes ((array!83049 0))(
  ( (array!83050 (arr!40057 (Array (_ BitVec 32) (_ BitVec 64))) (size!40594 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83049)

(declare-datatypes ((List!28674 0))(
  ( (Nil!28671) (Cons!28670 (h!29879 (_ BitVec 64)) (t!42210 List!28674)) )
))
(declare-fun arrayNoDuplicates!0 (array!83049 (_ BitVec 32) List!28674) Bool)

(assert (=> b!1270977 (= lt!574748 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28671))))

(declare-fun b!1270978 () Bool)

(declare-fun res!845753 () Bool)

(assert (=> b!1270978 (=> (not res!845753) (not e!724686))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83049 (_ BitVec 32)) Bool)

(assert (=> b!1270978 (= res!845753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!845751 () Bool)

(assert (=> start!107264 (=> (not res!845751) (not e!724686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107264 (= res!845751 (validMask!0 mask!1730))))

(assert (=> start!107264 e!724686))

(declare-datatypes ((V!49083 0))(
  ( (V!49084 (val!16533 Int)) )
))
(declare-datatypes ((ValueCell!15605 0))(
  ( (ValueCellFull!15605 (v!19168 V!49083)) (EmptyCell!15605) )
))
(declare-datatypes ((array!83051 0))(
  ( (array!83052 (arr!40058 (Array (_ BitVec 32) ValueCell!15605)) (size!40595 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83051)

(declare-fun e!724688 () Bool)

(declare-fun array_inv!30411 (array!83051) Bool)

(assert (=> start!107264 (and (array_inv!30411 _values!1134) e!724688)))

(assert (=> start!107264 true))

(declare-fun array_inv!30412 (array!83049) Bool)

(assert (=> start!107264 (array_inv!30412 _keys!1364)))

(declare-fun b!1270979 () Bool)

(declare-fun e!724685 () Bool)

(declare-fun tp_is_empty!32917 () Bool)

(assert (=> b!1270979 (= e!724685 tp_is_empty!32917)))

(declare-fun b!1270980 () Bool)

(assert (=> b!1270980 (= e!724688 (and e!724685 mapRes!50956))))

(declare-fun condMapEmpty!50956 () Bool)

(declare-fun mapDefault!50956 () ValueCell!15605)

