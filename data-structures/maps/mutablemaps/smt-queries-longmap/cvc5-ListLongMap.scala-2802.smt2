; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40708 () Bool)

(assert start!40708)

(declare-fun b_free!10711 () Bool)

(declare-fun b_next!10711 () Bool)

(assert (=> start!40708 (= b_free!10711 (not b_next!10711))))

(declare-fun tp!37953 () Bool)

(declare-fun b_and!18737 () Bool)

(assert (=> start!40708 (= tp!37953 b_and!18737)))

(declare-fun b!450034 () Bool)

(declare-fun res!267904 () Bool)

(declare-fun e!263756 () Bool)

(assert (=> b!450034 (=> (not res!267904) (not e!263756))))

(declare-datatypes ((array!27865 0))(
  ( (array!27866 (arr!13375 (Array (_ BitVec 32) (_ BitVec 64))) (size!13727 (_ BitVec 32))) )
))
(declare-fun lt!204513 () array!27865)

(declare-datatypes ((List!8022 0))(
  ( (Nil!8019) (Cons!8018 (h!8874 (_ BitVec 64)) (t!13792 List!8022)) )
))
(declare-fun arrayNoDuplicates!0 (array!27865 (_ BitVec 32) List!8022) Bool)

(assert (=> b!450034 (= res!267904 (arrayNoDuplicates!0 lt!204513 #b00000000000000000000000000000000 Nil!8019))))

(declare-fun b!450035 () Bool)

(declare-fun res!267902 () Bool)

(declare-fun e!263753 () Bool)

(assert (=> b!450035 (=> (not res!267902) (not e!263753))))

(declare-fun _keys!709 () array!27865)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450035 (= res!267902 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!450036 () Bool)

(declare-fun res!267905 () Bool)

(assert (=> b!450036 (=> (not res!267905) (not e!263756))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450036 (= res!267905 (bvsle from!863 i!563))))

(declare-fun b!450037 () Bool)

(declare-fun e!263754 () Bool)

(declare-fun tp_is_empty!12049 () Bool)

(assert (=> b!450037 (= e!263754 tp_is_empty!12049)))

(declare-fun res!267897 () Bool)

(assert (=> start!40708 (=> (not res!267897) (not e!263753))))

(assert (=> start!40708 (= res!267897 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13727 _keys!709))))))

(assert (=> start!40708 e!263753))

(assert (=> start!40708 tp_is_empty!12049))

(assert (=> start!40708 tp!37953))

(assert (=> start!40708 true))

(declare-datatypes ((V!17171 0))(
  ( (V!17172 (val!6069 Int)) )
))
(declare-datatypes ((ValueCell!5681 0))(
  ( (ValueCellFull!5681 (v!8320 V!17171)) (EmptyCell!5681) )
))
(declare-datatypes ((array!27867 0))(
  ( (array!27868 (arr!13376 (Array (_ BitVec 32) ValueCell!5681)) (size!13728 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27867)

(declare-fun e!263757 () Bool)

(declare-fun array_inv!9682 (array!27867) Bool)

(assert (=> start!40708 (and (array_inv!9682 _values!549) e!263757)))

(declare-fun array_inv!9683 (array!27865) Bool)

(assert (=> start!40708 (array_inv!9683 _keys!709)))

(declare-fun b!450038 () Bool)

(declare-fun res!267898 () Bool)

(assert (=> b!450038 (=> (not res!267898) (not e!263753))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!450038 (= res!267898 (and (= (size!13728 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13727 _keys!709) (size!13728 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!450039 () Bool)

(declare-fun e!263760 () Bool)

(assert (=> b!450039 (= e!263760 (bvslt i!563 (size!13728 _values!549)))))

(declare-fun b!450040 () Bool)

(declare-fun res!267895 () Bool)

(assert (=> b!450040 (=> (not res!267895) (not e!263753))))

(assert (=> b!450040 (= res!267895 (or (= (select (arr!13375 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13375 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450041 () Bool)

(declare-fun e!263752 () Bool)

(assert (=> b!450041 (= e!263752 tp_is_empty!12049)))

(declare-fun b!450042 () Bool)

(declare-fun res!267903 () Bool)

(assert (=> b!450042 (=> (not res!267903) (not e!263753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27865 (_ BitVec 32)) Bool)

(assert (=> b!450042 (= res!267903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!450043 () Bool)

(declare-fun e!263759 () Bool)

(assert (=> b!450043 (= e!263759 (not e!263760))))

(declare-fun res!267894 () Bool)

(assert (=> b!450043 (=> res!267894 e!263760)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450043 (= res!267894 (validKeyInArray!0 (select (arr!13375 _keys!709) from!863)))))

(declare-fun e!263755 () Bool)

(assert (=> b!450043 e!263755))

(declare-fun c!55898 () Bool)

(assert (=> b!450043 (= c!55898 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17171)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17171)

(declare-datatypes ((Unit!13119 0))(
  ( (Unit!13120) )
))
(declare-fun lt!204516 () Unit!13119)

(declare-fun v!412 () V!17171)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!678 (array!27865 array!27867 (_ BitVec 32) (_ BitVec 32) V!17171 V!17171 (_ BitVec 32) (_ BitVec 64) V!17171 (_ BitVec 32) Int) Unit!13119)

(assert (=> b!450043 (= lt!204516 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!678 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450044 () Bool)

(declare-datatypes ((tuple2!7912 0))(
  ( (tuple2!7913 (_1!3966 (_ BitVec 64)) (_2!3966 V!17171)) )
))
(declare-datatypes ((List!8023 0))(
  ( (Nil!8020) (Cons!8019 (h!8875 tuple2!7912) (t!13793 List!8023)) )
))
(declare-datatypes ((ListLongMap!6839 0))(
  ( (ListLongMap!6840 (toList!3435 List!8023)) )
))
(declare-fun call!29722 () ListLongMap!6839)

(declare-fun call!29723 () ListLongMap!6839)

(declare-fun +!1508 (ListLongMap!6839 tuple2!7912) ListLongMap!6839)

(assert (=> b!450044 (= e!263755 (= call!29722 (+!1508 call!29723 (tuple2!7913 k!794 v!412))))))

(declare-fun b!450045 () Bool)

(assert (=> b!450045 (= e!263753 e!263756)))

(declare-fun res!267893 () Bool)

(assert (=> b!450045 (=> (not res!267893) (not e!263756))))

(assert (=> b!450045 (= res!267893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204513 mask!1025))))

(assert (=> b!450045 (= lt!204513 (array!27866 (store (arr!13375 _keys!709) i!563 k!794) (size!13727 _keys!709)))))

(declare-fun b!450046 () Bool)

(assert (=> b!450046 (= e!263755 (= call!29723 call!29722))))

(declare-fun b!450047 () Bool)

(declare-fun res!267906 () Bool)

(assert (=> b!450047 (=> (not res!267906) (not e!263753))))

(assert (=> b!450047 (= res!267906 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13727 _keys!709))))))

(declare-fun b!450048 () Bool)

(declare-fun res!267896 () Bool)

(assert (=> b!450048 (=> (not res!267896) (not e!263753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450048 (= res!267896 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19707 () Bool)

(declare-fun mapRes!19707 () Bool)

(assert (=> mapIsEmpty!19707 mapRes!19707))

(declare-fun b!450049 () Bool)

(assert (=> b!450049 (= e!263757 (and e!263752 mapRes!19707))))

(declare-fun condMapEmpty!19707 () Bool)

(declare-fun mapDefault!19707 () ValueCell!5681)

