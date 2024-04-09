; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82294 () Bool)

(assert start!82294)

(declare-fun b_free!18539 () Bool)

(declare-fun b_next!18539 () Bool)

(assert (=> start!82294 (= b_free!18539 (not b_next!18539))))

(declare-fun tp!64578 () Bool)

(declare-fun b_and!30045 () Bool)

(assert (=> start!82294 (= tp!64578 b_and!30045)))

(declare-fun b!958822 () Bool)

(declare-fun e!540562 () Bool)

(assert (=> b!958822 (= e!540562 (not true))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33309 0))(
  ( (V!33310 (val!10673 Int)) )
))
(declare-fun minValue!1328 () V!33309)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58603 0))(
  ( (array!58604 (arr!28171 (Array (_ BitVec 32) (_ BitVec 64))) (size!28651 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58603)

(declare-datatypes ((ValueCell!10141 0))(
  ( (ValueCellFull!10141 (v!13230 V!33309)) (EmptyCell!10141) )
))
(declare-datatypes ((array!58605 0))(
  ( (array!58606 (arr!28172 (Array (_ BitVec 32) ValueCell!10141)) (size!28652 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58605)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33309)

(declare-fun i!793 () (_ BitVec 32))

(declare-datatypes ((tuple2!13850 0))(
  ( (tuple2!13851 (_1!6935 (_ BitVec 64)) (_2!6935 V!33309)) )
))
(declare-datatypes ((List!19716 0))(
  ( (Nil!19713) (Cons!19712 (h!20874 tuple2!13850) (t!28087 List!19716)) )
))
(declare-datatypes ((ListLongMap!12561 0))(
  ( (ListLongMap!12562 (toList!6296 List!19716)) )
))
(declare-fun contains!5349 (ListLongMap!12561 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3481 (array!58603 array!58605 (_ BitVec 32) (_ BitVec 32) V!33309 V!33309 (_ BitVec 32) Int) ListLongMap!12561)

(assert (=> b!958822 (contains!5349 (getCurrentListMap!3481 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28171 _keys!1668) i!793))))

(declare-datatypes ((Unit!32147 0))(
  ( (Unit!32148) )
))
(declare-fun lt!430445 () Unit!32147)

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!3 (array!58603 array!58605 (_ BitVec 32) (_ BitVec 32) V!33309 V!33309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32147)

(assert (=> b!958822 (= lt!430445 (lemmaInListMapFromThenInFromSmaller!3 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!958823 () Bool)

(declare-fun res!641920 () Bool)

(assert (=> b!958823 (=> (not res!641920) (not e!540562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58603 (_ BitVec 32)) Bool)

(assert (=> b!958823 (= res!641920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958824 () Bool)

(declare-fun res!641924 () Bool)

(assert (=> b!958824 (=> (not res!641924) (not e!540562))))

(assert (=> b!958824 (= res!641924 (contains!5349 (getCurrentListMap!3481 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28171 _keys!1668) i!793)))))

(declare-fun b!958825 () Bool)

(declare-fun e!540563 () Bool)

(declare-fun tp_is_empty!21245 () Bool)

(assert (=> b!958825 (= e!540563 tp_is_empty!21245)))

(declare-fun b!958826 () Bool)

(declare-fun res!641922 () Bool)

(assert (=> b!958826 (=> (not res!641922) (not e!540562))))

(assert (=> b!958826 (= res!641922 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28651 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28651 _keys!1668))))))

(declare-fun b!958827 () Bool)

(declare-fun res!641921 () Bool)

(assert (=> b!958827 (=> (not res!641921) (not e!540562))))

(assert (=> b!958827 (= res!641921 (and (= (size!28652 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28651 _keys!1668) (size!28652 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33847 () Bool)

(declare-fun mapRes!33847 () Bool)

(assert (=> mapIsEmpty!33847 mapRes!33847))

(declare-fun b!958828 () Bool)

(declare-fun res!641919 () Bool)

(assert (=> b!958828 (=> (not res!641919) (not e!540562))))

(declare-datatypes ((List!19717 0))(
  ( (Nil!19714) (Cons!19713 (h!20875 (_ BitVec 64)) (t!28088 List!19717)) )
))
(declare-fun arrayNoDuplicates!0 (array!58603 (_ BitVec 32) List!19717) Bool)

(assert (=> b!958828 (= res!641919 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19714))))

(declare-fun res!641923 () Bool)

(assert (=> start!82294 (=> (not res!641923) (not e!540562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82294 (= res!641923 (validMask!0 mask!2088))))

(assert (=> start!82294 e!540562))

(assert (=> start!82294 true))

(assert (=> start!82294 tp_is_empty!21245))

(declare-fun array_inv!21787 (array!58603) Bool)

(assert (=> start!82294 (array_inv!21787 _keys!1668)))

(declare-fun e!540561 () Bool)

(declare-fun array_inv!21788 (array!58605) Bool)

(assert (=> start!82294 (and (array_inv!21788 _values!1386) e!540561)))

(assert (=> start!82294 tp!64578))

(declare-fun b!958829 () Bool)

(declare-fun e!540560 () Bool)

(assert (=> b!958829 (= e!540561 (and e!540560 mapRes!33847))))

(declare-fun condMapEmpty!33847 () Bool)

(declare-fun mapDefault!33847 () ValueCell!10141)

