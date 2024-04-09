; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40662 () Bool)

(assert start!40662)

(declare-fun b_free!10665 () Bool)

(declare-fun b_next!10665 () Bool)

(assert (=> start!40662 (= b_free!10665 (not b_next!10665))))

(declare-fun tp!37814 () Bool)

(declare-fun b_and!18691 () Bool)

(assert (=> start!40662 (= tp!37814 b_and!18691)))

(declare-fun mapNonEmpty!19638 () Bool)

(declare-fun mapRes!19638 () Bool)

(declare-fun tp!37815 () Bool)

(declare-fun e!263301 () Bool)

(assert (=> mapNonEmpty!19638 (= mapRes!19638 (and tp!37815 e!263301))))

(declare-datatypes ((V!17109 0))(
  ( (V!17110 (val!6046 Int)) )
))
(declare-datatypes ((ValueCell!5658 0))(
  ( (ValueCellFull!5658 (v!8297 V!17109)) (EmptyCell!5658) )
))
(declare-fun mapRest!19638 () (Array (_ BitVec 32) ValueCell!5658))

(declare-fun mapKey!19638 () (_ BitVec 32))

(declare-datatypes ((array!27773 0))(
  ( (array!27774 (arr!13329 (Array (_ BitVec 32) ValueCell!5658)) (size!13681 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27773)

(declare-fun mapValue!19638 () ValueCell!5658)

(assert (=> mapNonEmpty!19638 (= (arr!13329 _values!549) (store mapRest!19638 mapKey!19638 mapValue!19638))))

(declare-fun b!448937 () Bool)

(declare-fun res!267044 () Bool)

(declare-fun e!263297 () Bool)

(assert (=> b!448937 (=> (not res!267044) (not e!263297))))

(declare-datatypes ((array!27775 0))(
  ( (array!27776 (arr!13330 (Array (_ BitVec 32) (_ BitVec 64))) (size!13682 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27775)

(declare-datatypes ((List!7981 0))(
  ( (Nil!7978) (Cons!7977 (h!8833 (_ BitVec 64)) (t!13751 List!7981)) )
))
(declare-fun arrayNoDuplicates!0 (array!27775 (_ BitVec 32) List!7981) Bool)

(assert (=> b!448937 (= res!267044 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7978))))

(declare-fun b!448938 () Bool)

(declare-fun res!267050 () Bool)

(assert (=> b!448938 (=> (not res!267050) (not e!263297))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448938 (= res!267050 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13682 _keys!709))))))

(declare-fun b!448939 () Bool)

(declare-fun e!263300 () Bool)

(declare-fun e!263296 () Bool)

(assert (=> b!448939 (= e!263300 (and e!263296 mapRes!19638))))

(declare-fun condMapEmpty!19638 () Bool)

(declare-fun mapDefault!19638 () ValueCell!5658)

(assert (=> b!448939 (= condMapEmpty!19638 (= (arr!13329 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5658)) mapDefault!19638)))))

(declare-fun b!448940 () Bool)

(declare-fun res!267048 () Bool)

(declare-fun e!263298 () Bool)

(assert (=> b!448940 (=> (not res!267048) (not e!263298))))

(declare-fun lt!204267 () array!27775)

(assert (=> b!448940 (= res!267048 (arrayNoDuplicates!0 lt!204267 #b00000000000000000000000000000000 Nil!7978))))

(declare-fun res!267046 () Bool)

(assert (=> start!40662 (=> (not res!267046) (not e!263297))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40662 (= res!267046 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13682 _keys!709))))))

(assert (=> start!40662 e!263297))

(declare-fun tp_is_empty!12003 () Bool)

(assert (=> start!40662 tp_is_empty!12003))

(assert (=> start!40662 tp!37814))

(assert (=> start!40662 true))

(declare-fun array_inv!9650 (array!27773) Bool)

(assert (=> start!40662 (and (array_inv!9650 _values!549) e!263300)))

(declare-fun array_inv!9651 (array!27775) Bool)

(assert (=> start!40662 (array_inv!9651 _keys!709)))

(declare-fun b!448941 () Bool)

(declare-fun res!267054 () Bool)

(assert (=> b!448941 (=> (not res!267054) (not e!263297))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448941 (= res!267054 (validKeyInArray!0 k0!794))))

(declare-fun b!448942 () Bool)

(assert (=> b!448942 (= e!263301 tp_is_empty!12003)))

(declare-fun b!448943 () Bool)

(assert (=> b!448943 (= e!263298 false)))

(declare-fun minValue!515 () V!17109)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17109)

(declare-datatypes ((tuple2!7870 0))(
  ( (tuple2!7871 (_1!3945 (_ BitVec 64)) (_2!3945 V!17109)) )
))
(declare-datatypes ((List!7982 0))(
  ( (Nil!7979) (Cons!7978 (h!8834 tuple2!7870) (t!13752 List!7982)) )
))
(declare-datatypes ((ListLongMap!6797 0))(
  ( (ListLongMap!6798 (toList!3414 List!7982)) )
))
(declare-fun lt!204268 () ListLongMap!6797)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun v!412 () V!17109)

(declare-fun getCurrentListMapNoExtraKeys!1594 (array!27775 array!27773 (_ BitVec 32) (_ BitVec 32) V!17109 V!17109 (_ BitVec 32) Int) ListLongMap!6797)

(assert (=> b!448943 (= lt!204268 (getCurrentListMapNoExtraKeys!1594 lt!204267 (array!27774 (store (arr!13329 _values!549) i!563 (ValueCellFull!5658 v!412)) (size!13681 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204266 () ListLongMap!6797)

(assert (=> b!448943 (= lt!204266 (getCurrentListMapNoExtraKeys!1594 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448944 () Bool)

(declare-fun res!267043 () Bool)

(assert (=> b!448944 (=> (not res!267043) (not e!263297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448944 (= res!267043 (validMask!0 mask!1025))))

(declare-fun b!448945 () Bool)

(declare-fun res!267047 () Bool)

(assert (=> b!448945 (=> (not res!267047) (not e!263297))))

(assert (=> b!448945 (= res!267047 (and (= (size!13681 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13682 _keys!709) (size!13681 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448946 () Bool)

(declare-fun res!267051 () Bool)

(assert (=> b!448946 (=> (not res!267051) (not e!263297))))

(declare-fun arrayContainsKey!0 (array!27775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448946 (= res!267051 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!448947 () Bool)

(declare-fun res!267052 () Bool)

(assert (=> b!448947 (=> (not res!267052) (not e!263297))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27775 (_ BitVec 32)) Bool)

(assert (=> b!448947 (= res!267052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448948 () Bool)

(declare-fun res!267053 () Bool)

(assert (=> b!448948 (=> (not res!267053) (not e!263298))))

(assert (=> b!448948 (= res!267053 (bvsle from!863 i!563))))

(declare-fun b!448949 () Bool)

(assert (=> b!448949 (= e!263296 tp_is_empty!12003)))

(declare-fun b!448950 () Bool)

(declare-fun res!267049 () Bool)

(assert (=> b!448950 (=> (not res!267049) (not e!263297))))

(assert (=> b!448950 (= res!267049 (or (= (select (arr!13330 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13330 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448951 () Bool)

(assert (=> b!448951 (= e!263297 e!263298)))

(declare-fun res!267045 () Bool)

(assert (=> b!448951 (=> (not res!267045) (not e!263298))))

(assert (=> b!448951 (= res!267045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204267 mask!1025))))

(assert (=> b!448951 (= lt!204267 (array!27776 (store (arr!13330 _keys!709) i!563 k0!794) (size!13682 _keys!709)))))

(declare-fun mapIsEmpty!19638 () Bool)

(assert (=> mapIsEmpty!19638 mapRes!19638))

(assert (= (and start!40662 res!267046) b!448944))

(assert (= (and b!448944 res!267043) b!448945))

(assert (= (and b!448945 res!267047) b!448947))

(assert (= (and b!448947 res!267052) b!448937))

(assert (= (and b!448937 res!267044) b!448938))

(assert (= (and b!448938 res!267050) b!448941))

(assert (= (and b!448941 res!267054) b!448950))

(assert (= (and b!448950 res!267049) b!448946))

(assert (= (and b!448946 res!267051) b!448951))

(assert (= (and b!448951 res!267045) b!448940))

(assert (= (and b!448940 res!267048) b!448948))

(assert (= (and b!448948 res!267053) b!448943))

(assert (= (and b!448939 condMapEmpty!19638) mapIsEmpty!19638))

(assert (= (and b!448939 (not condMapEmpty!19638)) mapNonEmpty!19638))

(get-info :version)

(assert (= (and mapNonEmpty!19638 ((_ is ValueCellFull!5658) mapValue!19638)) b!448942))

(assert (= (and b!448939 ((_ is ValueCellFull!5658) mapDefault!19638)) b!448949))

(assert (= start!40662 b!448939))

(declare-fun m!433295 () Bool)

(assert (=> b!448944 m!433295))

(declare-fun m!433297 () Bool)

(assert (=> b!448946 m!433297))

(declare-fun m!433299 () Bool)

(assert (=> b!448943 m!433299))

(declare-fun m!433301 () Bool)

(assert (=> b!448943 m!433301))

(declare-fun m!433303 () Bool)

(assert (=> b!448943 m!433303))

(declare-fun m!433305 () Bool)

(assert (=> b!448947 m!433305))

(declare-fun m!433307 () Bool)

(assert (=> start!40662 m!433307))

(declare-fun m!433309 () Bool)

(assert (=> start!40662 m!433309))

(declare-fun m!433311 () Bool)

(assert (=> b!448950 m!433311))

(declare-fun m!433313 () Bool)

(assert (=> b!448940 m!433313))

(declare-fun m!433315 () Bool)

(assert (=> b!448951 m!433315))

(declare-fun m!433317 () Bool)

(assert (=> b!448951 m!433317))

(declare-fun m!433319 () Bool)

(assert (=> mapNonEmpty!19638 m!433319))

(declare-fun m!433321 () Bool)

(assert (=> b!448937 m!433321))

(declare-fun m!433323 () Bool)

(assert (=> b!448941 m!433323))

(check-sat (not b_next!10665) tp_is_empty!12003 (not mapNonEmpty!19638) (not b!448944) (not b!448946) (not b!448951) (not b!448940) b_and!18691 (not b!448937) (not b!448943) (not b!448941) (not start!40662) (not b!448947))
(check-sat b_and!18691 (not b_next!10665))
