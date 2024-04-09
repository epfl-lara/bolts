; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82302 () Bool)

(assert start!82302)

(declare-fun b_free!18547 () Bool)

(declare-fun b_next!18547 () Bool)

(assert (=> start!82302 (= b_free!18547 (not b_next!18547))))

(declare-fun tp!64603 () Bool)

(declare-fun b_and!30053 () Bool)

(assert (=> start!82302 (= tp!64603 b_and!30053)))

(declare-fun b!958942 () Bool)

(declare-fun res!642006 () Bool)

(declare-fun e!540620 () Bool)

(assert (=> b!958942 (=> (not res!642006) (not e!540620))))

(declare-datatypes ((array!58619 0))(
  ( (array!58620 (arr!28179 (Array (_ BitVec 32) (_ BitVec 64))) (size!28659 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58619)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958942 (= res!642006 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28659 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28659 _keys!1668))))))

(declare-fun res!642005 () Bool)

(assert (=> start!82302 (=> (not res!642005) (not e!540620))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82302 (= res!642005 (validMask!0 mask!2088))))

(assert (=> start!82302 e!540620))

(assert (=> start!82302 true))

(declare-fun tp_is_empty!21253 () Bool)

(assert (=> start!82302 tp_is_empty!21253))

(declare-fun array_inv!21791 (array!58619) Bool)

(assert (=> start!82302 (array_inv!21791 _keys!1668)))

(declare-datatypes ((V!33321 0))(
  ( (V!33322 (val!10677 Int)) )
))
(declare-datatypes ((ValueCell!10145 0))(
  ( (ValueCellFull!10145 (v!13234 V!33321)) (EmptyCell!10145) )
))
(declare-datatypes ((array!58621 0))(
  ( (array!58622 (arr!28180 (Array (_ BitVec 32) ValueCell!10145)) (size!28660 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58621)

(declare-fun e!540623 () Bool)

(declare-fun array_inv!21792 (array!58621) Bool)

(assert (=> start!82302 (and (array_inv!21792 _values!1386) e!540623)))

(assert (=> start!82302 tp!64603))

(declare-fun b!958943 () Bool)

(assert (=> b!958943 (= e!540620 (not true))))

(declare-fun minValue!1328 () V!33321)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33321)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((tuple2!13858 0))(
  ( (tuple2!13859 (_1!6939 (_ BitVec 64)) (_2!6939 V!33321)) )
))
(declare-datatypes ((List!19723 0))(
  ( (Nil!19720) (Cons!19719 (h!20881 tuple2!13858) (t!28094 List!19723)) )
))
(declare-datatypes ((ListLongMap!12569 0))(
  ( (ListLongMap!12570 (toList!6300 List!19723)) )
))
(declare-fun contains!5353 (ListLongMap!12569 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3485 (array!58619 array!58621 (_ BitVec 32) (_ BitVec 32) V!33321 V!33321 (_ BitVec 32) Int) ListLongMap!12569)

(assert (=> b!958943 (contains!5353 (getCurrentListMap!3485 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28179 _keys!1668) i!793))))

(declare-datatypes ((Unit!32151 0))(
  ( (Unit!32152) )
))
(declare-fun lt!430457 () Unit!32151)

(declare-fun lemmaInListMapFromThenInFromSmaller!5 (array!58619 array!58621 (_ BitVec 32) (_ BitVec 32) V!33321 V!33321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32151)

(assert (=> b!958943 (= lt!430457 (lemmaInListMapFromThenInFromSmaller!5 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!958944 () Bool)

(declare-fun res!642007 () Bool)

(assert (=> b!958944 (=> (not res!642007) (not e!540620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58619 (_ BitVec 32)) Bool)

(assert (=> b!958944 (= res!642007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958945 () Bool)

(declare-fun res!642004 () Bool)

(assert (=> b!958945 (=> (not res!642004) (not e!540620))))

(declare-datatypes ((List!19724 0))(
  ( (Nil!19721) (Cons!19720 (h!20882 (_ BitVec 64)) (t!28095 List!19724)) )
))
(declare-fun arrayNoDuplicates!0 (array!58619 (_ BitVec 32) List!19724) Bool)

(assert (=> b!958945 (= res!642004 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19721))))

(declare-fun b!958946 () Bool)

(declare-fun e!540622 () Bool)

(assert (=> b!958946 (= e!540622 tp_is_empty!21253)))

(declare-fun mapNonEmpty!33859 () Bool)

(declare-fun mapRes!33859 () Bool)

(declare-fun tp!64602 () Bool)

(assert (=> mapNonEmpty!33859 (= mapRes!33859 (and tp!64602 e!540622))))

(declare-fun mapValue!33859 () ValueCell!10145)

(declare-fun mapKey!33859 () (_ BitVec 32))

(declare-fun mapRest!33859 () (Array (_ BitVec 32) ValueCell!10145))

(assert (=> mapNonEmpty!33859 (= (arr!28180 _values!1386) (store mapRest!33859 mapKey!33859 mapValue!33859))))

(declare-fun b!958947 () Bool)

(declare-fun res!642008 () Bool)

(assert (=> b!958947 (=> (not res!642008) (not e!540620))))

(assert (=> b!958947 (= res!642008 (and (= (size!28660 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28659 _keys!1668) (size!28660 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958948 () Bool)

(declare-fun res!642003 () Bool)

(assert (=> b!958948 (=> (not res!642003) (not e!540620))))

(assert (=> b!958948 (= res!642003 (contains!5353 (getCurrentListMap!3485 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28179 _keys!1668) i!793)))))

(declare-fun b!958949 () Bool)

(declare-fun e!540619 () Bool)

(assert (=> b!958949 (= e!540619 tp_is_empty!21253)))

(declare-fun b!958950 () Bool)

(assert (=> b!958950 (= e!540623 (and e!540619 mapRes!33859))))

(declare-fun condMapEmpty!33859 () Bool)

(declare-fun mapDefault!33859 () ValueCell!10145)

