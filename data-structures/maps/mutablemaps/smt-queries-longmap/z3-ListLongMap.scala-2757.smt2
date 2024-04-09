; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40404 () Bool)

(assert start!40404)

(declare-fun res!263211 () Bool)

(declare-fun e!261096 () Bool)

(assert (=> start!40404 (=> (not res!263211) (not e!261096))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27337 0))(
  ( (array!27338 (arr!13113 (Array (_ BitVec 32) (_ BitVec 64))) (size!13465 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27337)

(assert (=> start!40404 (= res!263211 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13465 _keys!709))))))

(assert (=> start!40404 e!261096))

(assert (=> start!40404 true))

(declare-datatypes ((V!16813 0))(
  ( (V!16814 (val!5935 Int)) )
))
(declare-datatypes ((ValueCell!5547 0))(
  ( (ValueCellFull!5547 (v!8182 V!16813)) (EmptyCell!5547) )
))
(declare-datatypes ((array!27339 0))(
  ( (array!27340 (arr!13114 (Array (_ BitVec 32) ValueCell!5547)) (size!13466 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27339)

(declare-fun e!261094 () Bool)

(declare-fun array_inv!9500 (array!27339) Bool)

(assert (=> start!40404 (and (array_inv!9500 _values!549) e!261094)))

(declare-fun array_inv!9501 (array!27337) Bool)

(assert (=> start!40404 (array_inv!9501 _keys!709)))

(declare-fun b!443873 () Bool)

(declare-fun res!263213 () Bool)

(assert (=> b!443873 (=> (not res!263213) (not e!261096))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27337 (_ BitVec 32)) Bool)

(assert (=> b!443873 (= res!263213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19299 () Bool)

(declare-fun mapRes!19299 () Bool)

(assert (=> mapIsEmpty!19299 mapRes!19299))

(declare-fun b!443874 () Bool)

(declare-fun e!261098 () Bool)

(declare-fun tp_is_empty!11781 () Bool)

(assert (=> b!443874 (= e!261098 tp_is_empty!11781)))

(declare-fun b!443875 () Bool)

(declare-fun e!261095 () Bool)

(assert (=> b!443875 (= e!261096 e!261095)))

(declare-fun res!263214 () Bool)

(assert (=> b!443875 (=> (not res!263214) (not e!261095))))

(declare-fun lt!203397 () array!27337)

(assert (=> b!443875 (= res!263214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203397 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443875 (= lt!203397 (array!27338 (store (arr!13113 _keys!709) i!563 k0!794) (size!13465 _keys!709)))))

(declare-fun b!443876 () Bool)

(declare-fun res!263215 () Bool)

(assert (=> b!443876 (=> (not res!263215) (not e!261096))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!443876 (= res!263215 (and (= (size!13466 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13465 _keys!709) (size!13466 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443877 () Bool)

(declare-fun res!263208 () Bool)

(assert (=> b!443877 (=> (not res!263208) (not e!261096))))

(assert (=> b!443877 (= res!263208 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13465 _keys!709))))))

(declare-fun b!443878 () Bool)

(assert (=> b!443878 (= e!261095 false)))

(declare-fun lt!203396 () Bool)

(declare-datatypes ((List!7833 0))(
  ( (Nil!7830) (Cons!7829 (h!8685 (_ BitVec 64)) (t!13599 List!7833)) )
))
(declare-fun arrayNoDuplicates!0 (array!27337 (_ BitVec 32) List!7833) Bool)

(assert (=> b!443878 (= lt!203396 (arrayNoDuplicates!0 lt!203397 #b00000000000000000000000000000000 Nil!7830))))

(declare-fun b!443879 () Bool)

(declare-fun res!263207 () Bool)

(assert (=> b!443879 (=> (not res!263207) (not e!261096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443879 (= res!263207 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19299 () Bool)

(declare-fun tp!37281 () Bool)

(declare-fun e!261097 () Bool)

(assert (=> mapNonEmpty!19299 (= mapRes!19299 (and tp!37281 e!261097))))

(declare-fun mapRest!19299 () (Array (_ BitVec 32) ValueCell!5547))

(declare-fun mapKey!19299 () (_ BitVec 32))

(declare-fun mapValue!19299 () ValueCell!5547)

(assert (=> mapNonEmpty!19299 (= (arr!13114 _values!549) (store mapRest!19299 mapKey!19299 mapValue!19299))))

(declare-fun b!443880 () Bool)

(declare-fun res!263206 () Bool)

(assert (=> b!443880 (=> (not res!263206) (not e!261096))))

(assert (=> b!443880 (= res!263206 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7830))))

(declare-fun b!443881 () Bool)

(assert (=> b!443881 (= e!261094 (and e!261098 mapRes!19299))))

(declare-fun condMapEmpty!19299 () Bool)

(declare-fun mapDefault!19299 () ValueCell!5547)

(assert (=> b!443881 (= condMapEmpty!19299 (= (arr!13114 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5547)) mapDefault!19299)))))

(declare-fun b!443882 () Bool)

(declare-fun res!263209 () Bool)

(assert (=> b!443882 (=> (not res!263209) (not e!261096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443882 (= res!263209 (validKeyInArray!0 k0!794))))

(declare-fun b!443883 () Bool)

(assert (=> b!443883 (= e!261097 tp_is_empty!11781)))

(declare-fun b!443884 () Bool)

(declare-fun res!263212 () Bool)

(assert (=> b!443884 (=> (not res!263212) (not e!261096))))

(declare-fun arrayContainsKey!0 (array!27337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443884 (= res!263212 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!443885 () Bool)

(declare-fun res!263210 () Bool)

(assert (=> b!443885 (=> (not res!263210) (not e!261096))))

(assert (=> b!443885 (= res!263210 (or (= (select (arr!13113 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13113 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!40404 res!263211) b!443879))

(assert (= (and b!443879 res!263207) b!443876))

(assert (= (and b!443876 res!263215) b!443873))

(assert (= (and b!443873 res!263213) b!443880))

(assert (= (and b!443880 res!263206) b!443877))

(assert (= (and b!443877 res!263208) b!443882))

(assert (= (and b!443882 res!263209) b!443885))

(assert (= (and b!443885 res!263210) b!443884))

(assert (= (and b!443884 res!263212) b!443875))

(assert (= (and b!443875 res!263214) b!443878))

(assert (= (and b!443881 condMapEmpty!19299) mapIsEmpty!19299))

(assert (= (and b!443881 (not condMapEmpty!19299)) mapNonEmpty!19299))

(get-info :version)

(assert (= (and mapNonEmpty!19299 ((_ is ValueCellFull!5547) mapValue!19299)) b!443883))

(assert (= (and b!443881 ((_ is ValueCellFull!5547) mapDefault!19299)) b!443874))

(assert (= start!40404 b!443881))

(declare-fun m!429935 () Bool)

(assert (=> start!40404 m!429935))

(declare-fun m!429937 () Bool)

(assert (=> start!40404 m!429937))

(declare-fun m!429939 () Bool)

(assert (=> b!443885 m!429939))

(declare-fun m!429941 () Bool)

(assert (=> b!443880 m!429941))

(declare-fun m!429943 () Bool)

(assert (=> b!443879 m!429943))

(declare-fun m!429945 () Bool)

(assert (=> b!443873 m!429945))

(declare-fun m!429947 () Bool)

(assert (=> b!443884 m!429947))

(declare-fun m!429949 () Bool)

(assert (=> b!443878 m!429949))

(declare-fun m!429951 () Bool)

(assert (=> mapNonEmpty!19299 m!429951))

(declare-fun m!429953 () Bool)

(assert (=> b!443882 m!429953))

(declare-fun m!429955 () Bool)

(assert (=> b!443875 m!429955))

(declare-fun m!429957 () Bool)

(assert (=> b!443875 m!429957))

(check-sat tp_is_empty!11781 (not b!443880) (not start!40404) (not mapNonEmpty!19299) (not b!443884) (not b!443882) (not b!443873) (not b!443878) (not b!443879) (not b!443875))
(check-sat)
