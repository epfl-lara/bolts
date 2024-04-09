; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71110 () Bool)

(assert start!71110)

(declare-fun b_free!13273 () Bool)

(declare-fun b_next!13273 () Bool)

(assert (=> start!71110 (= b_free!13273 (not b_next!13273))))

(declare-fun tp!46575 () Bool)

(declare-fun b_and!22205 () Bool)

(assert (=> start!71110 (= tp!46575 b_and!22205)))

(declare-fun b!825399 () Bool)

(declare-fun res!562792 () Bool)

(declare-fun e!459474 () Bool)

(assert (=> b!825399 (=> (not res!562792) (not e!459474))))

(declare-datatypes ((array!46108 0))(
  ( (array!46109 (arr!22096 (Array (_ BitVec 32) (_ BitVec 64))) (size!22517 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46108)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46108 (_ BitVec 32)) Bool)

(assert (=> b!825399 (= res!562792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825400 () Bool)

(declare-fun e!459475 () Bool)

(assert (=> b!825400 (= e!459475 true)))

(declare-datatypes ((V!24979 0))(
  ( (V!24980 (val!7539 Int)) )
))
(declare-datatypes ((tuple2!9980 0))(
  ( (tuple2!9981 (_1!5000 (_ BitVec 64)) (_2!5000 V!24979)) )
))
(declare-datatypes ((List!15825 0))(
  ( (Nil!15822) (Cons!15821 (h!16950 tuple2!9980) (t!22178 List!15825)) )
))
(declare-datatypes ((ListLongMap!8817 0))(
  ( (ListLongMap!8818 (toList!4424 List!15825)) )
))
(declare-fun lt!372796 () ListLongMap!8817)

(declare-fun lt!372786 () tuple2!9980)

(declare-fun lt!372792 () tuple2!9980)

(declare-fun lt!372787 () ListLongMap!8817)

(declare-fun +!1886 (ListLongMap!8817 tuple2!9980) ListLongMap!8817)

(assert (=> b!825400 (= lt!372787 (+!1886 (+!1886 lt!372796 lt!372786) lt!372792))))

(declare-fun lt!372790 () ListLongMap!8817)

(declare-fun lt!372797 () ListLongMap!8817)

(declare-fun lt!372791 () ListLongMap!8817)

(assert (=> b!825400 (and (= lt!372790 lt!372797) (= lt!372791 lt!372797) (= lt!372791 lt!372790))))

(declare-fun lt!372793 () ListLongMap!8817)

(assert (=> b!825400 (= lt!372797 (+!1886 lt!372793 lt!372786))))

(declare-fun lt!372788 () ListLongMap!8817)

(assert (=> b!825400 (= lt!372790 (+!1886 lt!372788 lt!372786))))

(declare-fun zeroValueBefore!34 () V!24979)

(declare-datatypes ((Unit!28289 0))(
  ( (Unit!28290) )
))
(declare-fun lt!372785 () Unit!28289)

(declare-fun zeroValueAfter!34 () V!24979)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!214 (ListLongMap!8817 (_ BitVec 64) V!24979 V!24979) Unit!28289)

(assert (=> b!825400 (= lt!372785 (addSameAsAddTwiceSameKeyDiffValues!214 lt!372788 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459476 () Bool)

(assert (=> b!825400 e!459476))

(declare-fun res!562795 () Bool)

(assert (=> b!825400 (=> (not res!562795) (not e!459476))))

(declare-fun lt!372789 () ListLongMap!8817)

(assert (=> b!825400 (= res!562795 (= lt!372789 lt!372793))))

(declare-fun lt!372794 () tuple2!9980)

(assert (=> b!825400 (= lt!372793 (+!1886 lt!372788 lt!372794))))

(assert (=> b!825400 (= lt!372788 (+!1886 lt!372796 lt!372792))))

(assert (=> b!825400 (= lt!372786 (tuple2!9981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459478 () Bool)

(assert (=> b!825400 e!459478))

(declare-fun res!562796 () Bool)

(assert (=> b!825400 (=> (not res!562796) (not e!459478))))

(assert (=> b!825400 (= res!562796 (= lt!372789 (+!1886 (+!1886 lt!372796 lt!372794) lt!372792)))))

(declare-fun minValue!754 () V!24979)

(assert (=> b!825400 (= lt!372792 (tuple2!9981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825400 (= lt!372794 (tuple2!9981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((ValueCell!7076 0))(
  ( (ValueCellFull!7076 (v!9968 V!24979)) (EmptyCell!7076) )
))
(declare-datatypes ((array!46110 0))(
  ( (array!46111 (arr!22097 (Array (_ BitVec 32) ValueCell!7076)) (size!22518 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46110)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2536 (array!46108 array!46110 (_ BitVec 32) (_ BitVec 32) V!24979 V!24979 (_ BitVec 32) Int) ListLongMap!8817)

(assert (=> b!825400 (= lt!372791 (getCurrentListMap!2536 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825400 (= lt!372789 (getCurrentListMap!2536 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!372784 () ListLongMap!8817)

(declare-fun b!825401 () Bool)

(assert (=> b!825401 (= e!459478 (= lt!372791 (+!1886 (+!1886 lt!372784 (tuple2!9981 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372792)))))

(declare-fun b!825402 () Bool)

(declare-fun e!459473 () Bool)

(declare-fun tp_is_empty!14983 () Bool)

(assert (=> b!825402 (= e!459473 tp_is_empty!14983)))

(declare-fun b!825403 () Bool)

(assert (=> b!825403 (= e!459474 (not e!459475))))

(declare-fun res!562793 () Bool)

(assert (=> b!825403 (=> res!562793 e!459475)))

(assert (=> b!825403 (= res!562793 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825403 (= lt!372796 lt!372784)))

(declare-fun lt!372795 () Unit!28289)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!556 (array!46108 array!46110 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24979 V!24979 V!24979 V!24979 (_ BitVec 32) Int) Unit!28289)

(assert (=> b!825403 (= lt!372795 (lemmaNoChangeToArrayThenSameMapNoExtras!556 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2440 (array!46108 array!46110 (_ BitVec 32) (_ BitVec 32) V!24979 V!24979 (_ BitVec 32) Int) ListLongMap!8817)

(assert (=> b!825403 (= lt!372784 (getCurrentListMapNoExtraKeys!2440 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825403 (= lt!372796 (getCurrentListMapNoExtraKeys!2440 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24097 () Bool)

(declare-fun mapRes!24097 () Bool)

(assert (=> mapIsEmpty!24097 mapRes!24097))

(declare-fun b!825404 () Bool)

(declare-fun e!459472 () Bool)

(assert (=> b!825404 (= e!459472 tp_is_empty!14983)))

(declare-fun res!562794 () Bool)

(assert (=> start!71110 (=> (not res!562794) (not e!459474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71110 (= res!562794 (validMask!0 mask!1312))))

(assert (=> start!71110 e!459474))

(assert (=> start!71110 tp_is_empty!14983))

(declare-fun array_inv!17605 (array!46108) Bool)

(assert (=> start!71110 (array_inv!17605 _keys!976)))

(assert (=> start!71110 true))

(declare-fun e!459477 () Bool)

(declare-fun array_inv!17606 (array!46110) Bool)

(assert (=> start!71110 (and (array_inv!17606 _values!788) e!459477)))

(assert (=> start!71110 tp!46575))

(declare-fun b!825405 () Bool)

(assert (=> b!825405 (= e!459477 (and e!459472 mapRes!24097))))

(declare-fun condMapEmpty!24097 () Bool)

(declare-fun mapDefault!24097 () ValueCell!7076)

